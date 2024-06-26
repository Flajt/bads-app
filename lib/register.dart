import 'package:app/adProfile/logic/BloomProfileCreator.dart';
import 'package:app/anonymousID/logic/IDService.dart';
import 'package:app/anonymousID/logic/LinkHandler.dart';
import 'package:app/anonymousID/logic/SecretService.dart';
import 'package:app/auth/logic/AuthSingleton.dart';
import 'package:app/db/logic/DBSingleton.dart';
import 'package:app/home/logic/UserAdTopicManager.dart';
import 'package:app/interactedAds/logic/InteractedAdsService.dart';
import 'package:get_it/get_it.dart';

Future<void> register() async {
  //GetIt.I.registerSingleton<AuthSingleton>(AuthSingleton()..init());
  GetIt.I.registerSingleton<DBSingleton>(DBSingleton());
  await GetIt.I.get<DBSingleton>().init();
  GetIt.I.registerFactory<UserAdTopicManger>(() => UserAdTopicManger());
  GetIt.I.registerFactory<IDService>(() => IDService());
  GetIt.I.registerFactory<InteractedAdsService>(() => InteractedAdsService());
  GetIt.I.registerSingleton<SecretService>(SecretService());
  GetIt.I.registerFactory<LinkHandler>(() => LinkHandler());
  GetIt.I.registerSingleton<BloomProfileCreator>(BloomProfileCreator());
}
