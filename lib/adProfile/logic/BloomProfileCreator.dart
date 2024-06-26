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
  Future<List<BloomFilter>> generateBloomProfiles(
      List<AdTopic> topics, AgeGroup userAgeGroup) async {
    List<BloomFilter> bloomFilters = [];
    for (int i = 0; i < 3; i++) {
      // 3 is chosen to generate 3 different user profiles
      BloomFilter bloomFilter = BloomFilter.fromDesiredAccuracy(
          bloomFilterAccuracy, numBloomFilterEntries);
      final categories = topics.map((e) => e.category).toList();
      Set<dynamic> preppedcategories = {};
      for (String category in categories) {
        List<String> subCategories = category.split("/");
        if (subCategories.contains("")) {
          subCategories.remove("");
        }
        preppedcategories.addAll(subCategories);
      }
      preppedcategories.add(userAgeGroup.index);
      for (var category in preppedcategories) {
        await bloomFilter.addEntry(category);
      }
      bloomFilters.add(bloomFilter);
    }
    return bloomFilters;
  }
}
