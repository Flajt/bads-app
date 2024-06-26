import 'dart:math';

import 'package:app/adProfile/logic/abstract/IRandomizer.dart';
import 'package:app/const.dart';

class AgeRandomizer implements IRandomizer<AgeGroup> {
  const AgeRandomizer();
  @override
  List<AgeGroup> pickRandomAmount(List<AgeGroup> data, int amount) {
    final random = Random.secure();

    // Check if we trigger the randomizer
    if (random.nextDouble() > triggerChance) {
      final result = <AgeGroup>[];
      for (var i = 0; i < amount; i++) {
        result.add(data[random.nextInt(data.length)]);
      }
      return result;
    }
    return data;
  }

  @override
  AgeGroup pickRandomValue(List<AgeGroup> data, AgeGroup inital) {
    final random = Random.secure();
    if (random.nextDouble() > triggerChance) {
      return data[random.nextInt(data.length)];
    }
    return inital;
  }

  @override
  double get triggerChance => .3;
}
