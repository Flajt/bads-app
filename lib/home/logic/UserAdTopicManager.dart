import 'package:app/db/logic/DBSingleton.dart';
import 'package:app/db/models/AdTopic.dart';
import 'package:get_it/get_it.dart';

// Small wrapper around db to allow better speration of concerns
class UserAdTopicManger {
  final GetIt getIt = GetIt.instance;
  late final DBSingleton db;
  UserAdTopicManger() {
    db = getIt.get<DBSingleton>();
  }
  Future<List<AdTopic>> getTopAdTopics({int amount = 5}) async {
    return await db.getNAdTopics(amount: amount);
  }

  Future<List<AdTopic>> getAdTopics() async {
    return await db.getAllAdTopics();
  }

  Future<void> updateAdTopic(AdTopic adTopic) async {
    await db.saveAdTopic(adTopic);
  }

  Future<void> deleteAdTopic(AdTopic adTopic) async {
    await db.rmAdTopic(adTopic);
  }

  Future<void> saveAdTopics(List<AdTopic> adTopics) async {
    await db.saveAdTopics(adTopics);
  }

  Future<void> saveAdTopic(AdTopic adTopic) async {
    await db.saveAdTopic(adTopic);
  }
}
