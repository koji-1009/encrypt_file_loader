// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetCachesCollection on Isar {
  IsarCollection<Caches> get caches => this.collection();
}

const CachesSchema = CollectionSchema(
  name: r'Caches',
  id: 4188262816426605463,
  properties: {
    r'bytes': PropertySchema(
      id: 0,
      name: r'bytes',
      type: IsarType.longList,
    ),
    r'filename': PropertySchema(
      id: 1,
      name: r'filename',
      type: IsarType.string,
    ),
    r'group': PropertySchema(
      id: 2,
      name: r'group',
      type: IsarType.string,
    ),
    r'updated': PropertySchema(
      id: 3,
      name: r'updated',
      type: IsarType.dateTime,
    ),
    r'url': PropertySchema(
      id: 4,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _cachesEstimateSize,
  serialize: _cachesSerialize,
  deserialize: _cachesDeserialize,
  deserializeProp: _cachesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _cachesGetId,
  getLinks: _cachesGetLinks,
  attach: _cachesAttach,
  version: '3.0.2',
);

int _cachesEstimateSize(
  Caches object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.bytes.length * 8;
  {
    final value = object.filename;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.group.length * 3;
  bytesCount += 3 + object.url.length * 3;
  return bytesCount;
}

void _cachesSerialize(
  Caches object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLongList(offsets[0], object.bytes);
  writer.writeString(offsets[1], object.filename);
  writer.writeString(offsets[2], object.group);
  writer.writeDateTime(offsets[3], object.updated);
  writer.writeString(offsets[4], object.url);
}

Caches _cachesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Caches(
    bytes: reader.readLongList(offsets[0]) ?? [],
    filename: reader.readStringOrNull(offsets[1]),
    group: reader.readString(offsets[2]),
    updated: reader.readDateTime(offsets[3]),
    url: reader.readString(offsets[4]),
  );
  object.id = id;
  return object;
}

P _cachesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongList(offset) ?? []) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cachesGetId(Caches object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cachesGetLinks(Caches object) {
  return [];
}

void _cachesAttach(IsarCollection<dynamic> col, Id id, Caches object) {
  object.id = id;
}

extension CachesQueryWhereSort on QueryBuilder<Caches, Caches, QWhere> {
  QueryBuilder<Caches, Caches, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CachesQueryWhere on QueryBuilder<Caches, Caches, QWhereClause> {
  QueryBuilder<Caches, Caches, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Caches, Caches, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Caches, Caches, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Caches, Caches, QAfterWhereClause> idBetween(
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

extension CachesQueryFilter on QueryBuilder<Caches, Caches, QFilterCondition> {
  QueryBuilder<Caches, Caches, QAfterFilterCondition> bytesElementEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bytes',
        value: value,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> bytesElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bytes',
        value: value,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> bytesElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bytes',
        value: value,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> bytesElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bytes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> bytesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bytes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> bytesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bytes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> bytesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bytes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> bytesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bytes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> bytesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bytes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> bytesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bytes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> filenameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'filename',
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> filenameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'filename',
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> filenameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'filename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> filenameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'filename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> filenameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'filename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> filenameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'filename',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> filenameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'filename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> filenameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'filename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> filenameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'filename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> filenameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'filename',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> filenameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'filename',
        value: '',
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> filenameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'filename',
        value: '',
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> groupEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'group',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> groupGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'group',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> groupLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'group',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> groupBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'group',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> groupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'group',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> groupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'group',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> groupContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'group',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> groupMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'group',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> groupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'group',
        value: '',
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> groupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'group',
        value: '',
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Caches, Caches, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Caches, Caches, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Caches, Caches, QAfterFilterCondition> updatedEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updated',
        value: value,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> updatedGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updated',
        value: value,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> updatedLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updated',
        value: value,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> updatedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> urlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> urlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> urlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> urlContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> urlMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<Caches, Caches, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension CachesQueryObject on QueryBuilder<Caches, Caches, QFilterCondition> {}

extension CachesQueryLinks on QueryBuilder<Caches, Caches, QFilterCondition> {}

extension CachesQuerySortBy on QueryBuilder<Caches, Caches, QSortBy> {
  QueryBuilder<Caches, Caches, QAfterSortBy> sortByFilename() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filename', Sort.asc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> sortByFilenameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filename', Sort.desc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> sortByGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'group', Sort.asc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> sortByGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'group', Sort.desc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> sortByUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updated', Sort.asc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> sortByUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updated', Sort.desc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension CachesQuerySortThenBy on QueryBuilder<Caches, Caches, QSortThenBy> {
  QueryBuilder<Caches, Caches, QAfterSortBy> thenByFilename() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filename', Sort.asc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> thenByFilenameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filename', Sort.desc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> thenByGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'group', Sort.asc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> thenByGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'group', Sort.desc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> thenByUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updated', Sort.asc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> thenByUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updated', Sort.desc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<Caches, Caches, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension CachesQueryWhereDistinct on QueryBuilder<Caches, Caches, QDistinct> {
  QueryBuilder<Caches, Caches, QDistinct> distinctByBytes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bytes');
    });
  }

  QueryBuilder<Caches, Caches, QDistinct> distinctByFilename(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'filename', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Caches, Caches, QDistinct> distinctByGroup(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'group', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Caches, Caches, QDistinct> distinctByUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updated');
    });
  }

  QueryBuilder<Caches, Caches, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }
}

extension CachesQueryProperty on QueryBuilder<Caches, Caches, QQueryProperty> {
  QueryBuilder<Caches, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Caches, List<int>, QQueryOperations> bytesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bytes');
    });
  }

  QueryBuilder<Caches, String?, QQueryOperations> filenameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'filename');
    });
  }

  QueryBuilder<Caches, String, QQueryOperations> groupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'group');
    });
  }

  QueryBuilder<Caches, DateTime, QQueryOperations> updatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updated');
    });
  }

  QueryBuilder<Caches, String, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }
}
