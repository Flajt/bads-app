import 'package:app/db/models/AdTopic.dart';
import 'package:app/db/models/HotpModel.dart';
import 'package:app/db/models/InteractedAdModel.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class DBSingleton {
  Isar? _db;
  DBSingleton._internal();
  static final DBSingleton _singleton = DBSingleton._internal();
  factory DBSingleton() {
    return _singleton;
  }
  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _db = await Isar.open(
        [AdTopicSchema, InteractedAdModelSchema, HotpModelSchema],
        directory: dir.path);
  }

  Future<void> saveHOTPConfig(HotpModel model) async {
    if (_db == null) {
      throw Exception("DB not initialized");
    }
    await _db!.writeTxn(() async {
      await _db!.hotpModels.put(model);
    });
  }

  Future<void> saveHOTPConfigs(List<HotpModel> models) async {
    if (_db == null) {
      throw Exception("DB not initialized");
    }
    await _db!.writeTxn(() async {
      await _db!.hotpModels.putAll(models);
    });
  }

  Future<void> saveAdTopics(List<AdTopic> adTopics) async {
    if (_db == null) {
      throw Exception("DB not initialized");
    }
    await _db!.writeTxn(() async {
      for (var adTopic in adTopics) {
        final categoryExists = await _db!.adTopics
            .filter()
            .categoryEqualTo(adTopic.category)
            .findFirst();
        if (categoryExists == null) {
          await _db!.adTopics.put(adTopic);
        } else {
          final updatedCategory =
              categoryExists.copyWith(weight: categoryExists.weight + 1);
          _db!.adTopics.put(updatedCategory);
        }
      }
    });
  }

  Future<void> saveAdTopic(AdTopic adTopic) async {
    if (_db == null) {
      throw Exception("DB not initialized");
    }
    await _db!.writeTxn(() async {
      final categoryExists = await _db!.adTopics
          .filter()
          .categoryEqualTo(adTopic.category)
          .findFirst();
      if (categoryExists == null) {
        await _db!.adTopics.put(adTopic);
      } else {
        final updatedCategory =
            categoryExists.copyWith(weight: categoryExists.weight + 1);
        await _db!.adTopics.put(updatedCategory);
      }
    });
  }

  Future<void> saveInteractedAds(List<InteractedAdModel> ads) async {
    if (_db == null) {
      throw Exception("DB not initialized");
    }
    await _db!.writeTxn(() async {
      await _db!.interactedAdModels
          .putAll(ads); // O(1) time complexity?, hard to quantify
    });
  }

  Future<List<InteractedAdModel>> retriveInteractedAds() async {
    if (_db == null) {
      throw Exception("DB not initialized");
    }
    return await _db!.writeTxn<List<InteractedAdModel>>(() async {
      return await _db!.interactedAdModels
          .where()
          .sortByStorageTime()
          .findAll();
    });
  }

  Future<void> dropInteractedAdsOlderThan(DateTime dateTime) async {
    if (_db == null) {
      throw Exception("DB not initialized");
    }
    await _db!.writeTxn(() async {
      await _db!.interactedAdModels
          .filter()
          .storageTimeLessThan(dateTime)
          .deleteAll();
    });
  }

  Future<void> dropAdTopicsOlderThan(DateTime dateTime) async {
    if (_db == null) {
      throw Exception("DB not initialized");
    }
    await _db!.writeTxn(() async {
      await _db!.adTopics.filter().creationDateLessThan(dateTime).deleteAll();
    });
  }

  Future<void> rmAdTopic(AdTopic adTopic) async {
    if (_db == null) {
      throw Exception("DB not initialized");
    }
    await _db!.writeTxn(() async {
      await _db!.adTopics.delete(adTopic.id);
    });
  }

  Future<void> dropHOTPOlderThan(DateTime dateTime) {
    if (_db == null) {
      throw Exception("DB not initialized");
    }
    return _db!.writeTxn(() {
      return _db!.hotpModels
          .filter()
          .creationDateLessThan(dateTime)
          .deleteAll();
    });
  }

  Future<void> getHOTPConfigs() {
    if (_db == null) {
      throw Exception("DB not initialized");
    }
    return _db!.hotpModels.where().findAll();
  }

  Future<List<AdTopic>> getNAdTopics({int amount = 5}) {
    if (_db == null) {
      throw Exception("DB not initialized");
    }
    return _db!.adTopics.where().sortByWeight().limit(amount).findAll();
  }

  Future<List<AdTopic>> getAllAdTopics() {
    if (_db == null) {
      throw Exception("DB not initialized");
    }
    return _db!.adTopics.where().findAll();
  }

  // Use only if the user wants to delete his account, otherwise this is not recommended
  Future<void> dropAll() async {
    if (_db == null) {
      throw Exception("DB not initialized");
    }
    await _db!.writeTxn(() async {
      await _db!.adTopics.clear();
      await _db!.interactedAdModels.clear();
    });
  }
}
