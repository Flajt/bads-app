import 'dart:math';

import 'package:app/adProfile/logic/abstract/IRandomizer.dart';
import 'package:app/const.dart';
import 'package:app/db/models/AdTopic.dart';

class AdTopicRandomizer implements IRandomizer<AdTopic> {
  const AdTopicRandomizer(); //TODO: depreciate in favor of pickRandomAmount
  @override
  List<AdTopic> pickRandomAmount(List<AdTopic> data, int amount) {
    final result = <AdTopic>[];
    final random = Random.secure();
    if (data.length >= amount) {
      for (var i = 0; i < amount; i++) {
        result.add(data[random.nextInt(data.length)]);
      }
    } else {
      final numEntriesMissing = amount - data.length;
      final adTopics = cat_map.values.toList();
      for (var i = 0; i < numEntriesMissing; i++) {
        String topic = adTopics[random.nextInt(adTopics.length)];
        int adTopicAccuracyNum = topic.split("/").length;
        result.add(AdTopic(
            accuracy: adTopicAccuracyNum == 1
                ? AdTopicAccuracy.low
                : adTopicAccuracyNum == 2
                    ? AdTopicAccuracy.medium
                    : AdTopicAccuracy.high,
            category: topic,
            creationDate: DateTime.now(),
            weight: 1));
      }
    }
    return result;
  }

  @override
  AdTopic pickRandomValue(List<AdTopic> data, AdTopic inital) {
    final random = Random.secure();
    return data[random.nextInt(data.length)];
  }

  @override
  double get triggerChance => 1.0;
}
