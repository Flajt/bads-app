import 'dart:convert';

import 'package:app/anonymousID/logic/IDService.dart';
import 'package:app/db/logic/DBSingleton.dart';
import 'package:app/db/models/InteractedAdModel.dart';
import 'package:app/register.dart';
import 'package:get_it/get_it.dart';
import 'package:workmanager/workmanager.dart';
import "package:http/http.dart" as http;

@pragma("vm:entry-point")
void requestInteractedAdsJob() {
  Workmanager().executeTask((taskName, inputData) async {
    await register();
    RequestInteractedAdsJob job = RequestInteractedAdsJob();
    return await job.fetchInteractions();
  });
}

class RequestInteractedAdsJob {
  final String url = "http://192.168.178.30:8000/interacted-ads";
  final IDService _idService = GetIt.I<IDService>();
  final DBSingleton _db = GetIt.I<DBSingleton>();

  Future<bool> fetchInteractions() async {
    final List<String> ids = await _idService
        .fetchInteractionIDs(); // O(k), since the loop only runs 3 times, every time
    final resp = await http.get(Uri.parse(
        "$url?user_ids=${ids.join(",")}")); // O(1) network requests are always constant time, worst case O(k)
    if (resp.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(resp.body)[
          "interacted_ads"]; // Time: O(1)?, Space: O(1) best case, however since each of the three ids can hold up to n interactions, worst case O(n)
      List<InteractedAdModel> interactedModels =
          []; //Space Copmlexity: Best case O(1), worst case O(n)
      if (jsonData.isNotEmpty) {
        for (final mergedInteractions in jsonData) {
          //Time: O(1) since there are only 3, Space: O(1)
          for (final interaction in mergedInteractions["interactions"]) {
            // Time: best case O(1), worst case O(n)
            interactedModels.add(InteractedAdModel.fromJson(
                mergedInteractions["ad"], interaction)); //Space: O(1)
          }
        }
        await _db.saveInteractedAds(
            interactedModels); // Hard to quantify since it depends on the db implementation, assuming O(1) best case, worst case O(n)
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}
