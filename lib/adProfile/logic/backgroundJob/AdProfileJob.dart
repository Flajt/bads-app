import 'dart:convert';

import 'package:app/adProfile/logic/AdTopicRandomizer.dart';
import 'package:app/adProfile/logic/AgeGroupRandomizer.dart';
import 'package:app/adProfile/logic/BloomFilter.dart';
import 'package:app/adProfile/logic/BloomProfileCreator.dart';
import 'package:app/adProfile/model/AdProfileMode.dart';
import 'package:app/anonymousID/logic/IDService.dart';
import 'package:app/anonymousID/logic/SecretService.dart';
import 'package:app/const.dart';
import 'package:app/db/models/AdTopic.dart';
import 'package:app/home/logic/UserAdTopicManager.dart';
import 'package:app/register.dart';
import 'package:get_it/get_it.dart';
import 'package:workmanager/workmanager.dart';
import 'package:http/http.dart' as http;

@pragma("vm:entry-point")
void profileJobDispatcher() {
  Workmanager().executeTask((taskName, inputData) async {
    await register();
    AdProfileJob job = AdProfileJob();
    return await job.uploadProfiles();
  });
}

class AdProfileJob {
  late final BloomProfileCreator bloomProfileCreator;
  late final UserAdTopicManger userAdTopicManger;
  late final IDService idService;
  final getIt = GetIt.instance;
  final AgeRandomizer ageRandomizer = const AgeRandomizer();
  final AdTopicRandomizer adTopicRandomizer = const AdTopicRandomizer();
  final adProfileUrl = "http://192.168.178.30:8000/ad-profile";
  final interactedAdUrl = "http://192.168.178.30:8000/interacted-ads";
  AdProfileJob() {
    bloomProfileCreator = getIt.get<BloomProfileCreator>();
    userAdTopicManger = getIt.get<UserAdTopicManger>();
    idService = getIt.get<IDService>();
  }
  Future<List<AdProfileModel>> createProfiles() async {
    List<AdProfileModel> models = [];
    List<BloomFilter> filters = [];
    List<String> ids = await idService.generateIDs();
    List<AdTopic> topics = await userAdTopicManger
        .getTopAdTopics(); // Time: O(log(n))? Hard to quantify since it#s a db call
    for (int i = 0; i < 3; i++) {
      // Time complexity O(1), since it's a constant
      final userAgeGroup = ageRandomizer.pickRandomValue(AgeGroup.values,
          AgeGroup.age_18_27); // Time complexity O(1) & space complexity O(1)
      List<AdTopic> randomTopics =
          adTopicRandomizer.pickRandomAmount(topics, 5);
      BloomFilter filter = await bloomProfileCreator.generateBloomProfile(
          randomTopics, userAgeGroup);
      if (topics.isEmpty) {
        await userAdTopicManger
            .saveAdTopics(randomTopics); // O(n) time complexity
        topics = randomTopics;
      }
      filters.add(filter);
    }
    for (final f in filters) {
      // Time complexity O(k) / O(1), where k is the number of filters, which is a constant of three
      final currentIndex = filters
          .indexOf(f); // Time complexity O(1), since the list size is constant
      models.add(AdProfileModel(
          identifier: ids[currentIndex],
          bloomFilter: f.bloomFilter,
          numHashFunctions: f.bloomFilterHashes));
    }
    return models; //O(1), since there will only be three statements returned
  }

  Future<List<String>> createInteractedAdIds() async =>
      await idService.generateIDs(type: SecretType.INTERACTION);

  Future<bool> uploadProfiles() async {
    List<AdProfileModel> models = await createProfiles();
    List<String> ids = await createInteractedAdIds();
    if (models.isEmpty) {
      idService.undoLastCountIncrease(SecretType.PROFILE);
      return false;
    }
    final jsonModels = models.map((e) => e.toJson()).toList();
    final json = {"user_ad_profiles": jsonModels};
    http.Response adResp = await http.post(Uri.parse(adProfileUrl),
        body: jsonEncode(json), headers: {"Content-Type": "application/json"});
    if (adResp.statusCode != 201) {
      await idService.undoLastCountIncrease(SecretType.PROFILE);
      return false;
    }
    http.Response interactionResp = await http.post(Uri.parse(interactedAdUrl),
        body: jsonEncode({"user_ids": ids}),
        headers: {"Content-Type": "application/json"});
    if (interactionResp.statusCode != 201) {
      await idService.undoLastCountIncrease(SecretType.INTERACTION);
      return false;
    }
    return true;
  }
}
