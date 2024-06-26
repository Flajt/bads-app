// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'InteractedAdModel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetInteractedAdModelCollection on Isar {
  IsarCollection<InteractedAdModel> get interactedAdModels => this.collection();
}

const InteractedAdModelSchema = CollectionSchema(
  name: r'InteractedAdModel',
  id: -5010518473221658443,
  properties: {
    r'adDescription': PropertySchema(
      id: 0,
      name: r'adDescription',
      type: IsarType.string,
    ),
    r'adID': PropertySchema(
      id: 1,
      name: r'adID',
      type: IsarType.string,
    ),
    r'adTitle': PropertySchema(
      id: 2,
      name: r'adTitle',
      type: IsarType.string,
    ),
    r'appID': PropertySchema(
      id: 3,
      name: r'appID',
      type: IsarType.string,
    ),
    r'assetURL': PropertySchema(
      id: 4,
      name: r'assetURL',
      type: IsarType.string,
    ),
    r'interactionDate': PropertySchema(
      id: 5,
      name: r'interactionDate',
      type: IsarType.dateTime,
    ),
    r'lang': PropertySchema(
      id: 6,
      name: r'lang',
      type: IsarType.string,
    ),
    r'publisherID': PropertySchema(
      id: 7,
      name: r'publisherID',
      type: IsarType.string,
    ),
    r'storageTime': PropertySchema(
      id: 8,
      name: r'storageTime',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _interactedAdModelEstimateSize,
  serialize: _interactedAdModelSerialize,
  deserialize: _interactedAdModelDeserialize,
  deserializeProp: _interactedAdModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _interactedAdModelGetId,
  getLinks: _interactedAdModelGetLinks,
  attach: _interactedAdModelAttach,
  version: '3.1.7',
);

int _interactedAdModelEstimateSize(
  InteractedAdModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.adDescription.length * 3;
  bytesCount += 3 + object.adID.length * 3;
  bytesCount += 3 + object.adTitle.length * 3;
  bytesCount += 3 + object.appID.length * 3;
  bytesCount += 3 + object.assetURL.length * 3;
  bytesCount += 3 + object.lang.length * 3;
  bytesCount += 3 + object.publisherID.length * 3;
  return bytesCount;
}

void _interactedAdModelSerialize(
  InteractedAdModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.adDescription);
  writer.writeString(offsets[1], object.adID);
  writer.writeString(offsets[2], object.adTitle);
  writer.writeString(offsets[3], object.appID);
  writer.writeString(offsets[4], object.assetURL);
  writer.writeDateTime(offsets[5], object.interactionDate);
  writer.writeString(offsets[6], object.lang);
  writer.writeString(offsets[7], object.publisherID);
  writer.writeDateTime(offsets[8], object.storageTime);
}

InteractedAdModel _interactedAdModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = InteractedAdModel();
  object.adDescription = reader.readString(offsets[0]);
  object.adID = reader.readString(offsets[1]);
  object.adTitle = reader.readString(offsets[2]);
  object.appID = reader.readString(offsets[3]);
  object.assetURL = reader.readString(offsets[4]);
  object.id = id;
  object.interactionDate = reader.readDateTime(offsets[5]);
  object.lang = reader.readString(offsets[6]);
  object.publisherID = reader.readString(offsets[7]);
  object.storageTime = reader.readDateTime(offsets[8]);
  return object;
}

P _interactedAdModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _interactedAdModelGetId(InteractedAdModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _interactedAdModelGetLinks(
    InteractedAdModel object) {
  return [];
}

void _interactedAdModelAttach(
    IsarCollection<dynamic> col, Id id, InteractedAdModel object) {
  object.id = id;
}

extension InteractedAdModelQueryWhereSort
    on QueryBuilder<InteractedAdModel, InteractedAdModel, QWhere> {
  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension InteractedAdModelQueryWhere
    on QueryBuilder<InteractedAdModel, InteractedAdModel, QWhereClause> {
  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension InteractedAdModelQueryFilter
    on QueryBuilder<InteractedAdModel, InteractedAdModel, QFilterCondition> {
  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adDescriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adDescriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'adDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adDescriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'adDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adDescriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'adDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'adDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'adDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'adDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'adDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'adDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'adID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'adID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'adID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'adID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'adID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adIDContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'adID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adIDMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'adID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adID',
        value: '',
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'adID',
        value: '',
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adTitleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adTitleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'adTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adTitleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'adTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adTitleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'adTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'adTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'adTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'adTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'adTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      adTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'adTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      appIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      appIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'appID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      appIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'appID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      appIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'appID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      appIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'appID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      appIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'appID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      appIDContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'appID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      appIDMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'appID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      appIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appID',
        value: '',
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      appIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'appID',
        value: '',
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      assetURLEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assetURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      assetURLGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'assetURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      assetURLLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'assetURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      assetURLBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'assetURL',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      assetURLStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'assetURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      assetURLEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'assetURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      assetURLContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'assetURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      assetURLMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'assetURL',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      assetURLIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assetURL',
        value: '',
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      assetURLIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'assetURL',
        value: '',
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      interactionDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'interactionDate',
        value: value,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      interactionDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'interactionDate',
        value: value,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      interactionDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'interactionDate',
        value: value,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      interactionDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'interactionDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      langEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      langGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      langLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      langBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lang',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      langStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      langEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      langContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      langMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lang',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      langIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      langIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      publisherIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'publisherID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      publisherIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'publisherID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      publisherIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'publisherID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      publisherIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'publisherID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      publisherIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'publisherID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      publisherIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'publisherID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      publisherIDContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'publisherID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      publisherIDMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'publisherID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      publisherIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'publisherID',
        value: '',
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      publisherIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'publisherID',
        value: '',
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      storageTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storageTime',
        value: value,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      storageTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storageTime',
        value: value,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      storageTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storageTime',
        value: value,
      ));
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterFilterCondition>
      storageTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storageTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension InteractedAdModelQueryObject
    on QueryBuilder<InteractedAdModel, InteractedAdModel, QFilterCondition> {}

extension InteractedAdModelQueryLinks
    on QueryBuilder<InteractedAdModel, InteractedAdModel, QFilterCondition> {}

extension InteractedAdModelQuerySortBy
    on QueryBuilder<InteractedAdModel, InteractedAdModel, QSortBy> {
  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByAdDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adDescription', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByAdDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adDescription', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByAdID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adID', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByAdIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adID', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByAdTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adTitle', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByAdTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adTitle', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByAppID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appID', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByAppIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appID', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByAssetURL() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetURL', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByAssetURLDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetURL', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByInteractionDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interactionDate', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByInteractionDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interactionDate', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByLang() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByLangDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByPublisherID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publisherID', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByPublisherIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publisherID', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByStorageTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storageTime', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      sortByStorageTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storageTime', Sort.desc);
    });
  }
}

extension InteractedAdModelQuerySortThenBy
    on QueryBuilder<InteractedAdModel, InteractedAdModel, QSortThenBy> {
  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByAdDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adDescription', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByAdDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adDescription', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByAdID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adID', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByAdIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adID', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByAdTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adTitle', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByAdTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adTitle', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByAppID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appID', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByAppIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appID', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByAssetURL() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetURL', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByAssetURLDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetURL', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByInteractionDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interactionDate', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByInteractionDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interactionDate', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByLang() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByLangDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByPublisherID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publisherID', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByPublisherIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publisherID', Sort.desc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByStorageTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storageTime', Sort.asc);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QAfterSortBy>
      thenByStorageTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storageTime', Sort.desc);
    });
  }
}

extension InteractedAdModelQueryWhereDistinct
    on QueryBuilder<InteractedAdModel, InteractedAdModel, QDistinct> {
  QueryBuilder<InteractedAdModel, InteractedAdModel, QDistinct>
      distinctByAdDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QDistinct> distinctByAdID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adID', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QDistinct>
      distinctByAdTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adTitle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QDistinct> distinctByAppID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'appID', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QDistinct>
      distinctByAssetURL({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'assetURL', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QDistinct>
      distinctByInteractionDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'interactionDate');
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QDistinct> distinctByLang(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lang', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QDistinct>
      distinctByPublisherID({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'publisherID', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InteractedAdModel, InteractedAdModel, QDistinct>
      distinctByStorageTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'storageTime');
    });
  }
}

extension InteractedAdModelQueryProperty
    on QueryBuilder<InteractedAdModel, InteractedAdModel, QQueryProperty> {
  QueryBuilder<InteractedAdModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<InteractedAdModel, String, QQueryOperations>
      adDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adDescription');
    });
  }

  QueryBuilder<InteractedAdModel, String, QQueryOperations> adIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adID');
    });
  }

  QueryBuilder<InteractedAdModel, String, QQueryOperations> adTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adTitle');
    });
  }

  QueryBuilder<InteractedAdModel, String, QQueryOperations> appIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'appID');
    });
  }

  QueryBuilder<InteractedAdModel, String, QQueryOperations> assetURLProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'assetURL');
    });
  }

  QueryBuilder<InteractedAdModel, DateTime, QQueryOperations>
      interactionDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'interactionDate');
    });
  }

  QueryBuilder<InteractedAdModel, String, QQueryOperations> langProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lang');
    });
  }

  QueryBuilder<InteractedAdModel, String, QQueryOperations>
      publisherIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'publisherID');
    });
  }

  QueryBuilder<InteractedAdModel, DateTime, QQueryOperations>
      storageTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'storageTime');
    });
  }
}
