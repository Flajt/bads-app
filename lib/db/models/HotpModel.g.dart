// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HotpModel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetHotpModelCollection on Isar {
  IsarCollection<HotpModel> get hotpModels => this.collection();
}

const HotpModelSchema = CollectionSchema(
  name: r'HotpModel',
  id: 4580817361325122814,
  properties: {
    r'associatedAppId': PropertySchema(
      id: 0,
      name: r'associatedAppId',
      type: IsarType.string,
    ),
    r'counter': PropertySchema(
      id: 1,
      name: r'counter',
      type: IsarType.long,
    ),
    r'creationDate': PropertySchema(
      id: 2,
      name: r'creationDate',
      type: IsarType.dateTime,
    ),
    r'secret': PropertySchema(
      id: 3,
      name: r'secret',
      type: IsarType.string,
    )
  },
  estimateSize: _hotpModelEstimateSize,
  serialize: _hotpModelSerialize,
  deserialize: _hotpModelDeserialize,
  deserializeProp: _hotpModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _hotpModelGetId,
  getLinks: _hotpModelGetLinks,
  attach: _hotpModelAttach,
  version: '3.1.7',
);

int _hotpModelEstimateSize(
  HotpModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.associatedAppId.length * 3;
  bytesCount += 3 + object.secret.length * 3;
  return bytesCount;
}

void _hotpModelSerialize(
  HotpModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.associatedAppId);
  writer.writeLong(offsets[1], object.counter);
  writer.writeDateTime(offsets[2], object.creationDate);
  writer.writeString(offsets[3], object.secret);
}

HotpModel _hotpModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = HotpModel();
  object.associatedAppId = reader.readString(offsets[0]);
  object.counter = reader.readLong(offsets[1]);
  object.creationDate = reader.readDateTime(offsets[2]);
  object.id = id;
  object.secret = reader.readString(offsets[3]);
  return object;
}

P _hotpModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _hotpModelGetId(HotpModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _hotpModelGetLinks(HotpModel object) {
  return [];
}

void _hotpModelAttach(IsarCollection<dynamic> col, Id id, HotpModel object) {
  object.id = id;
}

extension HotpModelQueryWhereSort
    on QueryBuilder<HotpModel, HotpModel, QWhere> {
  QueryBuilder<HotpModel, HotpModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension HotpModelQueryWhere
    on QueryBuilder<HotpModel, HotpModel, QWhereClause> {
  QueryBuilder<HotpModel, HotpModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<HotpModel, HotpModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterWhereClause> idBetween(
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

extension HotpModelQueryFilter
    on QueryBuilder<HotpModel, HotpModel, QFilterCondition> {
  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition>
      associatedAppIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'associatedAppId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition>
      associatedAppIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'associatedAppId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition>
      associatedAppIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'associatedAppId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition>
      associatedAppIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'associatedAppId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition>
      associatedAppIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'associatedAppId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition>
      associatedAppIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'associatedAppId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition>
      associatedAppIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'associatedAppId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition>
      associatedAppIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'associatedAppId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition>
      associatedAppIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'associatedAppId',
        value: '',
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition>
      associatedAppIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'associatedAppId',
        value: '',
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> counterEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'counter',
        value: value,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> counterGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'counter',
        value: value,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> counterLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'counter',
        value: value,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> counterBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'counter',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> creationDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition>
      creationDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'creationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition>
      creationDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'creationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> creationDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'creationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> secretEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secret',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> secretGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'secret',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> secretLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'secret',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> secretBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'secret',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> secretStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'secret',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> secretEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'secret',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> secretContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'secret',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> secretMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'secret',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> secretIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secret',
        value: '',
      ));
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterFilterCondition> secretIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'secret',
        value: '',
      ));
    });
  }
}

extension HotpModelQueryObject
    on QueryBuilder<HotpModel, HotpModel, QFilterCondition> {}

extension HotpModelQueryLinks
    on QueryBuilder<HotpModel, HotpModel, QFilterCondition> {}

extension HotpModelQuerySortBy on QueryBuilder<HotpModel, HotpModel, QSortBy> {
  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> sortByAssociatedAppId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associatedAppId', Sort.asc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> sortByAssociatedAppIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associatedAppId', Sort.desc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> sortByCounter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'counter', Sort.asc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> sortByCounterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'counter', Sort.desc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> sortByCreationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationDate', Sort.asc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> sortByCreationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationDate', Sort.desc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> sortBySecret() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secret', Sort.asc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> sortBySecretDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secret', Sort.desc);
    });
  }
}

extension HotpModelQuerySortThenBy
    on QueryBuilder<HotpModel, HotpModel, QSortThenBy> {
  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> thenByAssociatedAppId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associatedAppId', Sort.asc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> thenByAssociatedAppIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associatedAppId', Sort.desc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> thenByCounter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'counter', Sort.asc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> thenByCounterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'counter', Sort.desc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> thenByCreationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationDate', Sort.asc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> thenByCreationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationDate', Sort.desc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> thenBySecret() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secret', Sort.asc);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QAfterSortBy> thenBySecretDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secret', Sort.desc);
    });
  }
}

extension HotpModelQueryWhereDistinct
    on QueryBuilder<HotpModel, HotpModel, QDistinct> {
  QueryBuilder<HotpModel, HotpModel, QDistinct> distinctByAssociatedAppId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'associatedAppId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<HotpModel, HotpModel, QDistinct> distinctByCounter() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'counter');
    });
  }

  QueryBuilder<HotpModel, HotpModel, QDistinct> distinctByCreationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'creationDate');
    });
  }

  QueryBuilder<HotpModel, HotpModel, QDistinct> distinctBySecret(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'secret', caseSensitive: caseSensitive);
    });
  }
}

extension HotpModelQueryProperty
    on QueryBuilder<HotpModel, HotpModel, QQueryProperty> {
  QueryBuilder<HotpModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<HotpModel, String, QQueryOperations> associatedAppIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'associatedAppId');
    });
  }

  QueryBuilder<HotpModel, int, QQueryOperations> counterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'counter');
    });
  }

  QueryBuilder<HotpModel, DateTime, QQueryOperations> creationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'creationDate');
    });
  }

  QueryBuilder<HotpModel, String, QQueryOperations> secretProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'secret');
    });
  }
}
