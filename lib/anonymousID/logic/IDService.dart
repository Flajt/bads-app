import 'package:app/anonymousID/logic/IDGenerator.dart';
import 'package:app/anonymousID/logic/SecretService.dart';
import 'package:get_it/get_it.dart';

class IDService {
  late final int _amount;
  late final SecretService secretService;
  final getIt = GetIt.instance;
  IDService({int amount = 3}) {
    _amount = amount;
    secretService = getIt.get<SecretService>();
  }

  Future<bool> shouldUpdate() async {
    DateTime now = DateTime.now();
    DateTime? lastUpdate = await secretService.getLastUpdate();
    if (lastUpdate == null) {
      return true;
    }
    if (now.difference(lastUpdate).inDays == 1) {
      return true;
    } else {
      return false;
    }
  }

  Future<List<String>> generateIDs(
      {SecretType type = SecretType.PROFILE}) async {
    // Time: O(k), Space: O(k)
    bool hasSecrets = await secretService.hasSecrets();
    if (!hasSecrets) {
      await secretService.saveSecret(
          SecretType.PROFILE, secretService.generateBase32Secret(), 0);
      await secretService.saveSecret(
          SecretType.INTERACTION, secretService.generateBase32Secret(), 0);
    }
    List<String> ids = [];
    String rawSecret = await secretService.getSecret(type);
    List secretComponents = rawSecret.split("::");
    String secret = secretComponents[0];
    int counter = int.parse(secretComponents[1]);
    final IDGenerator idGenerator = IDGenerator(secret: secret);
    for (int i = 0; i < _amount; i++) {
      String id = idGenerator.generateId(counter);
      ids.add(id);
      counter++;
    }
    counter +=
        1; // We increment the counter by the amount of generated ids +1 since this is the starting point for the next batch
    await secretService.saveSecret(type, secret, counter);
    return ids;
  }

  Future<void> undoLastCountIncrease(SecretType type) async {
    if (_amount == 0) {
      return;
    }
    String rawSecret = await secretService.getSecret(type);
    List secretComponents = rawSecret.split("::");
    String secret = secretComponents[0];
    int counter = int.parse(secretComponents[1]);
    counter -= _amount + 1;
    await secretService.saveSecret(type, secret, counter);
  }

  Future<List<String>> fetchInteractionIDs() async {
    // Time: O(k), Space: O(k)
    List<String> ids = []; // Storage: O(k) k = 3
    String rawSecret = await secretService
        .getSecret(SecretType.INTERACTION); // Space O(1), Time O(1)
    List secretComponents = rawSecret.split("::"); // Space O(k), Time O(1)
    String secret = secretComponents[0]; // Space O(1), Time O(1)
    int counter = int.parse(secretComponents[1]) -
        3; // We want to fetch the last 3 ids, not the next 3| Time O(1), Space O(1)
    final IDGenerator idGenerator = IDGenerator(secret: secret); // Space O(1)
    for (int i = 0; i < _amount; i++) {
      // Time O(k)
      String id = idGenerator.generateId(counter); // Time O(1), Space O(1)
      ids.add(id); // Time O(1), Space O(1)
      counter++; // Time O(1)
    }
    return ids;
  }
}
