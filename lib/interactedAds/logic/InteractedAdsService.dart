import 'package:app/db/logic/DBSingleton.dart';
import 'package:app/db/models/InteractedAdModel.dart';
import 'package:get_it/get_it.dart';

class InteractedAdsService {
  final getIt = GetIt.I;
  late final DBSingleton dbSingleton;
  InteractedAdsService() {
    dbSingleton = getIt.get<DBSingleton>();
  }
  Future<void> saveInteractedAd(List<InteractedAdModel> models) async {
    await dbSingleton.saveInteractedAds(models);
  }

  Future<List<InteractedAdModel>> getInteractedAds() async {
    return await dbSingleton.retriveInteractedAds();
  }
}
