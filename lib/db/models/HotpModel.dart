import 'package:isar/isar.dart';

part "HotpModel.g.dart";

@collection
class HotpModel {
  late String associatedAppId;
  Id id = Isar.autoIncrement;
  // HOTP secret, needs to be stored encrypted!
  late String secret;
  late int counter;
  late DateTime creationDate;
}
