import 'package:app/auth/logic/AuthSingleton.dart';
import 'package:get_it/get_it.dart';

void register() async {
  GetIt.I.registerSingleton<AuthSingleton>(AuthSingleton()..init());
}
