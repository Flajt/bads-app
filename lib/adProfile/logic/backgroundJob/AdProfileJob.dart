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
import 'package:app/db/models/InteractedAdModel.dart';
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
    List<AdTopic> topics = await userAdTopicManger.getTopAdTopics();
    final userAgeGroup =
        ageRandomizer.pickRandomValue(AgeGroup.values, AgeGroup.age_18_27);
    List<AdTopic> randomTopics = adTopicRandomizer.pickRandomAmount(topics, 5);
    List<BloomFilter> filters = await bloomProfileCreator.generateBloomProfiles(
        randomTopics, userAgeGroup);
    List<String> ids = await idService.generateIDs();
    if (topics.isEmpty && filters.isNotEmpty) {
      await userAdTopicManger.saveAdTopics(randomTopics);
    }
    for (final f in filters) {
      final currentIndex = filters.indexOf(f);
      models.add(AdProfileModel(
          identifier: ids[currentIndex],
          bloomFilter: f.bloomFilter,
          numHashFunctions: f.bloomFilterHashes));
    }
    return models;
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
