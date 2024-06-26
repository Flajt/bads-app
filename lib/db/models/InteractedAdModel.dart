import 'package:isar/isar.dart';

part "InteractedAdModel.g.dart";

@collection
class InteractedAdModel {
  Id id = Isar.autoIncrement;
  late String appID;
  late String adID;
  late String adTitle;
  late String adDescription;
  late String assetURL;
  late String lang;
  late String publisherID;
  late DateTime storageTime;
  late DateTime interactionDate;

  static InteractedAdModel fromJson(
      Map<String, dynamic> adJson, Map<String, dynamic> interactionJson) {
    return InteractedAdModel()
      ..appID = interactionJson["app_id"]
      ..interactionDate = DateTime.parse(interactionJson["creation_date"])
      ..adID = adJson["ad_id"]
      ..adTitle = adJson["title"]
      ..adDescription = adJson["ad_description"]
      ..assetURL = adJson["asset_url"]
      ..lang = adJson["lang"][0] //TODO: Support arrays
      ..publisherID = adJson["publisher_id"]
      ..storageTime = DateTime.now();
  }
}
