abstract class IRandomizer<T> {
  abstract final double triggerChance;
  List<T> pickRandomAmount(List<T> data, int amount);
  T pickRandomValue(List<T> data, T inital);
}
