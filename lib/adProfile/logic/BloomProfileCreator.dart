import 'package:app/adProfile/logic/BloomFilter.dart';
import 'package:app/const.dart';
import 'package:app/db/models/AdTopic.dart';

class BloomProfileCreator {
  // should idealy be based on the number of topics + the number of age group + the location entry
  final int numBloomFilterEntries;
  // How accurate the bloom filter should be, the more it is the less private the user is
  final double bloomFilterAccuracy;

  BloomProfileCreator({
    this.numBloomFilterEntries = 13 +
        1, // 5 topics + 1 age group + 1 Location entry, average length per topic is 2.5 words
    this.bloomFilterAccuracy = 0.6,
  });
  // Generates the three different bloom filters which represent the users interest
  //
  // It also performs additional anonymization
  Future<BloomFilter> generateBloomProfile(
      List<AdTopic> topics, AgeGroup userAgeGroup) async {
    final categories = topics
        .map((e) => e.category)
        .toList(); // Time and space complexity O(1) / O(k), since it doesn't change, it's constant
    // Time complexity O(1), since it's a constant
    BloomFilter bloomFilter = BloomFilter.fromDesiredAccuracy(
        bloomFilterAccuracy, numBloomFilterEntries); // O(k) space complexity
    Set<dynamic> preppedcategories = {};
    for (String category in categories) {
      // Time complexity O(k) / O(1), since it's a constant as well, space should be O(k) / O(1), since it's not input dependant and will always have the same size
      List<String> subCategories = category.split("/");
      subCategories.remove("");
      preppedcategories.addAll(subCategories);
    }
    preppedcategories.add(userAgeGroup.index);
    for (var category in preppedcategories) {
      // Time complexity O(k) / O(1), since it's a constant as well, there are approx. 13 entries + the age group
      await bloomFilter.addEntry(
          category); // O(k) / O(1) time complexity, depending on the number of hash functions, however, O(1) space complexity
    }
    return bloomFilter; // O(1) since there will only be three statements returned
  }
}
