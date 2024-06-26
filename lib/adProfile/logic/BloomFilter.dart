import 'package:murmur3/murmur3.dart';
import 'dart:math';

class BloomFilter {
  /// The size of the bloom filter, after calculating the size based on the desired accuracy
  final int bloomFilterSize;

  /// The accuracy of the bloom filter, the higher the accuracy the less private the user is
  final double bloomFilterAccuracy;

  /// The amount of hashes used to hash the data
  final int bloomFilterHashes;

  /// The byte storage = the bloom filter itself
  late final List<int> bloomFilter;

  BloomFilter(
      {required this.bloomFilterSize,
      required this.bloomFilterAccuracy,
      required this.bloomFilterHashes}) {
    bloomFilter = List.filled(bloomFilterSize, 0);
  }

  /// Source: https://stackoverflow.com/a/22467497
  static double _calculateSize(int numItems, double falsePosValue) =>
      -numItems * log(falsePosValue) / (pow(log(2), 2));

  /// Source: https://stackoverflow.com/a/22467497
  static double _calculateNumHashes(int requiredSize, numItems) =>
      requiredSize / numItems * log(2);

  /// Creates a bloom filter with a desired "accuracy"
  BloomFilter.fromDesiredAccuracy(double accuracy, int amountItems)
      : bloomFilterSize = _calculateSize(amountItems, 1 - accuracy).ceil(),
        bloomFilterHashes = _calculateNumHashes(
                _calculateSize(amountItems, 1 - accuracy).ceil(), amountItems)
            .ceil(),
        bloomFilterAccuracy = accuracy {
    bloomFilter = List.filled(bloomFilterSize, 0);
  }

  Future<void> addEntry(data) async {
    for (var i = 0; i < bloomFilterHashes; i++) {
      final hash = await murmur3_32(data) % bloomFilterSize;
      bloomFilter[hash] = 1;
    }
  }
}
