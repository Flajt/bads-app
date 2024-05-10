import 'package:logto_dart_sdk/logto_dart_sdk.dart';
import 'package:http/http.dart' as http;

class AuthSingleton {
  LogtoClient? _logtoClient;
  static final AuthSingleton _singleton = AuthSingleton._internal();

  factory AuthSingleton() {
    return _singleton;
  }
  AuthSingleton._internal();

  void init() async {
    const logtoConfig = LogtoConfig(
      endpoint: "", // Your Logto endpoint
      appId: "", // Your App ID
    );
    _logtoClient = LogtoClient(
      config: logtoConfig,
    );
  }

  void signIn() async {
    assert(_logtoClient != null);
    await _logtoClient!.signIn('de.triskalion.bads://callback');
  }

  void signOut() async {
    assert(_logtoClient != null);
    await _logtoClient!.signOut();
  }

  Future<bool> get isAuthenticated async => await _logtoClient!.isAuthenticated;
}
