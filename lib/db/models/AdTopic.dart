import 'package:isar/isar.dart';

part "AdTopic.g.dart";

/// Low means: e.g. /News, a highlevel topic, which is general
///
/// Medium means: e.g. /News/Politics, a midlevel topic, which is not too specific
///
///  High means: e.g. /News/Politics/US, a lowlevel topic, which is very specific
enum AdTopicAccuracy { low, medium, high }

@collection
class AdTopic {
  Id id = Isar.autoIncrement;
  final int weight;
  final String category;
  @Enumerated(EnumType.name)
  final AdTopicAccuracy accuracy;
  final DateTime creationDate;

  AdTopic({
    required this.weight,
    required this.category,
    required this.accuracy,
    required this.creationDate,
  });

  //copywith method
  AdTopic copyWith({
    Id? id,
    int? weight,
    String? category,
    AdTopicAccuracy? accuracy,
    DateTime? creationDate,
  }) {
    return AdTopic(
      weight: weight ?? this.weight,
      category: category ?? this.category,
      accuracy: accuracy ?? this.accuracy,
      creationDate: creationDate ?? this.creationDate,
    )..id = this.id;
  }
}
