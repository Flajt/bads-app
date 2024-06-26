class AdProfileModel {
  final int numHashFunctions;
  final String identifier;
  final List<int> bloomFilter;

  AdProfileModel(
      {required this.numHashFunctions,
      required this.identifier,
      required this.bloomFilter});

  AdProfileModel.fromJson(Map<String, dynamic> json)
      : numHashFunctions = json['num_hash_func'],
        identifier = json['identifier'],
        bloomFilter = json['bloom_filter'];

  Map<String, dynamic> toJson() {
    return {
      'num_hash_func': numHashFunctions,
      'identifier': identifier,
      'bloom_filter': bloomFilter
    };
  }
}
