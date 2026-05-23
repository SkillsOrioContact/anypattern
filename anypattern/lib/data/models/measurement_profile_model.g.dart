// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_profile_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMeasurementProfileModelCollection on Isar {
  IsarCollection<MeasurementProfileModel> get measurementProfileModels =>
      this.collection();
}

const MeasurementProfileModelSchema = CollectionSchema(
  name: r'MeasurementProfileModel',
  id: 1880754511498307598,
  properties: {
    r'ankle': PropertySchema(
      id: 0,
      name: r'ankle',
      type: IsarType.double,
    ),
    r'armCircumference': PropertySchema(
      id: 1,
      name: r'armCircumference',
      type: IsarType.double,
    ),
    r'backWidth': PropertySchema(
      id: 2,
      name: r'backWidth',
      type: IsarType.double,
    ),
    r'bust': PropertySchema(
      id: 3,
      name: r'bust',
      type: IsarType.double,
    ),
    r'bustDistance': PropertySchema(
      id: 4,
      name: r'bustDistance',
      type: IsarType.double,
    ),
    r'bustHeight': PropertySchema(
      id: 5,
      name: r'bustHeight',
      type: IsarType.double,
    ),
    r'calf': PropertySchema(
      id: 6,
      name: r'calf',
      type: IsarType.double,
    ),
    r'chest': PropertySchema(
      id: 7,
      name: r'chest',
      type: IsarType.double,
    ),
    r'createdAt': PropertySchema(
      id: 8,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'crotchDepth': PropertySchema(
      id: 9,
      name: r'crotchDepth',
      type: IsarType.double,
    ),
    r'customMeasurementsJson': PropertySchema(
      id: 10,
      name: r'customMeasurementsJson',
      type: IsarType.string,
    ),
    r'height': PropertySchema(
      id: 11,
      name: r'height',
      type: IsarType.double,
    ),
    r'hip': PropertySchema(
      id: 12,
      name: r'hip',
      type: IsarType.double,
    ),
    r'hipHeight': PropertySchema(
      id: 13,
      name: r'hipHeight',
      type: IsarType.double,
    ),
    r'inseam': PropertySchema(
      id: 14,
      name: r'inseam',
      type: IsarType.double,
    ),
    r'isMetric': PropertySchema(
      id: 15,
      name: r'isMetric',
      type: IsarType.bool,
    ),
    r'knee': PropertySchema(
      id: 16,
      name: r'knee',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 17,
      name: r'name',
      type: IsarType.string,
    ),
    r'neck': PropertySchema(
      id: 18,
      name: r'neck',
      type: IsarType.double,
    ),
    r'outseam': PropertySchema(
      id: 19,
      name: r'outseam',
      type: IsarType.double,
    ),
    r'shoulder': PropertySchema(
      id: 20,
      name: r'shoulder',
      type: IsarType.double,
    ),
    r'sleeveLength': PropertySchema(
      id: 21,
      name: r'sleeveLength',
      type: IsarType.double,
    ),
    r'thigh': PropertySchema(
      id: 22,
      name: r'thigh',
      type: IsarType.double,
    ),
    r'updatedAt': PropertySchema(
      id: 23,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'waist': PropertySchema(
      id: 24,
      name: r'waist',
      type: IsarType.double,
    ),
    r'waistLengthBack': PropertySchema(
      id: 25,
      name: r'waistLengthBack',
      type: IsarType.double,
    ),
    r'waistLengthFront': PropertySchema(
      id: 26,
      name: r'waistLengthFront',
      type: IsarType.double,
    ),
    r'weight': PropertySchema(
      id: 27,
      name: r'weight',
      type: IsarType.double,
    ),
    r'wrist': PropertySchema(
      id: 28,
      name: r'wrist',
      type: IsarType.double,
    )
  },
  estimateSize: _measurementProfileModelEstimateSize,
  serialize: _measurementProfileModelSerialize,
  deserialize: _measurementProfileModelDeserialize,
  deserializeProp: _measurementProfileModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _measurementProfileModelGetId,
  getLinks: _measurementProfileModelGetLinks,
  attach: _measurementProfileModelAttach,
  version: '3.1.0+1',
);

int _measurementProfileModelEstimateSize(
  MeasurementProfileModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.customMeasurementsJson.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _measurementProfileModelSerialize(
  MeasurementProfileModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.ankle);
  writer.writeDouble(offsets[1], object.armCircumference);
  writer.writeDouble(offsets[2], object.backWidth);
  writer.writeDouble(offsets[3], object.bust);
  writer.writeDouble(offsets[4], object.bustDistance);
  writer.writeDouble(offsets[5], object.bustHeight);
  writer.writeDouble(offsets[6], object.calf);
  writer.writeDouble(offsets[7], object.chest);
  writer.writeDateTime(offsets[8], object.createdAt);
  writer.writeDouble(offsets[9], object.crotchDepth);
  writer.writeString(offsets[10], object.customMeasurementsJson);
  writer.writeDouble(offsets[11], object.height);
  writer.writeDouble(offsets[12], object.hip);
  writer.writeDouble(offsets[13], object.hipHeight);
  writer.writeDouble(offsets[14], object.inseam);
  writer.writeBool(offsets[15], object.isMetric);
  writer.writeDouble(offsets[16], object.knee);
  writer.writeString(offsets[17], object.name);
  writer.writeDouble(offsets[18], object.neck);
  writer.writeDouble(offsets[19], object.outseam);
  writer.writeDouble(offsets[20], object.shoulder);
  writer.writeDouble(offsets[21], object.sleeveLength);
  writer.writeDouble(offsets[22], object.thigh);
  writer.writeDateTime(offsets[23], object.updatedAt);
  writer.writeDouble(offsets[24], object.waist);
  writer.writeDouble(offsets[25], object.waistLengthBack);
  writer.writeDouble(offsets[26], object.waistLengthFront);
  writer.writeDouble(offsets[27], object.weight);
  writer.writeDouble(offsets[28], object.wrist);
}

MeasurementProfileModel _measurementProfileModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MeasurementProfileModel();
  object.ankle = reader.readDoubleOrNull(offsets[0]);
  object.armCircumference = reader.readDoubleOrNull(offsets[1]);
  object.backWidth = reader.readDoubleOrNull(offsets[2]);
  object.bust = reader.readDoubleOrNull(offsets[3]);
  object.bustDistance = reader.readDoubleOrNull(offsets[4]);
  object.bustHeight = reader.readDoubleOrNull(offsets[5]);
  object.calf = reader.readDoubleOrNull(offsets[6]);
  object.chest = reader.readDoubleOrNull(offsets[7]);
  object.createdAt = reader.readDateTime(offsets[8]);
  object.crotchDepth = reader.readDoubleOrNull(offsets[9]);
  object.customMeasurementsJson = reader.readString(offsets[10]);
  object.height = reader.readDoubleOrNull(offsets[11]);
  object.hip = reader.readDoubleOrNull(offsets[12]);
  object.hipHeight = reader.readDoubleOrNull(offsets[13]);
  object.id = id;
  object.inseam = reader.readDoubleOrNull(offsets[14]);
  object.isMetric = reader.readBool(offsets[15]);
  object.knee = reader.readDoubleOrNull(offsets[16]);
  object.name = reader.readString(offsets[17]);
  object.neck = reader.readDoubleOrNull(offsets[18]);
  object.outseam = reader.readDoubleOrNull(offsets[19]);
  object.shoulder = reader.readDoubleOrNull(offsets[20]);
  object.sleeveLength = reader.readDoubleOrNull(offsets[21]);
  object.thigh = reader.readDoubleOrNull(offsets[22]);
  object.updatedAt = reader.readDateTime(offsets[23]);
  object.waist = reader.readDoubleOrNull(offsets[24]);
  object.waistLengthBack = reader.readDoubleOrNull(offsets[25]);
  object.waistLengthFront = reader.readDoubleOrNull(offsets[26]);
  object.weight = reader.readDoubleOrNull(offsets[27]);
  object.wrist = reader.readDoubleOrNull(offsets[28]);
  return object;
}

P _measurementProfileModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readDoubleOrNull(offset)) as P;
    case 13:
      return (reader.readDoubleOrNull(offset)) as P;
    case 14:
      return (reader.readDoubleOrNull(offset)) as P;
    case 15:
      return (reader.readBool(offset)) as P;
    case 16:
      return (reader.readDoubleOrNull(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readDoubleOrNull(offset)) as P;
    case 19:
      return (reader.readDoubleOrNull(offset)) as P;
    case 20:
      return (reader.readDoubleOrNull(offset)) as P;
    case 21:
      return (reader.readDoubleOrNull(offset)) as P;
    case 22:
      return (reader.readDoubleOrNull(offset)) as P;
    case 23:
      return (reader.readDateTime(offset)) as P;
    case 24:
      return (reader.readDoubleOrNull(offset)) as P;
    case 25:
      return (reader.readDoubleOrNull(offset)) as P;
    case 26:
      return (reader.readDoubleOrNull(offset)) as P;
    case 27:
      return (reader.readDoubleOrNull(offset)) as P;
    case 28:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _measurementProfileModelGetId(MeasurementProfileModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _measurementProfileModelGetLinks(
    MeasurementProfileModel object) {
  return [];
}

void _measurementProfileModelAttach(
    IsarCollection<dynamic> col, Id id, MeasurementProfileModel object) {
  object.id = id;
}

extension MeasurementProfileModelByIndex
    on IsarCollection<MeasurementProfileModel> {
  Future<MeasurementProfileModel?> getByName(String name) {
    return getByIndex(r'name', [name]);
  }

  MeasurementProfileModel? getByNameSync(String name) {
    return getByIndexSync(r'name', [name]);
  }

  Future<bool> deleteByName(String name) {
    return deleteByIndex(r'name', [name]);
  }

  bool deleteByNameSync(String name) {
    return deleteByIndexSync(r'name', [name]);
  }

  Future<List<MeasurementProfileModel?>> getAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndex(r'name', values);
  }

  List<MeasurementProfileModel?> getAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'name', values);
  }

  Future<int> deleteAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'name', values);
  }

  int deleteAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'name', values);
  }

  Future<Id> putByName(MeasurementProfileModel object) {
    return putByIndex(r'name', object);
  }

  Id putByNameSync(MeasurementProfileModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'name', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByName(List<MeasurementProfileModel> objects) {
    return putAllByIndex(r'name', objects);
  }

  List<Id> putAllByNameSync(List<MeasurementProfileModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'name', objects, saveLinks: saveLinks);
  }
}

extension MeasurementProfileModelQueryWhereSort
    on QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QWhere> {
  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MeasurementProfileModelQueryWhere on QueryBuilder<
    MeasurementProfileModel, MeasurementProfileModel, QWhereClause> {
  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterWhereClause> idBetween(
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

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterWhereClause> nameEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterWhereClause> nameNotEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }
}

extension MeasurementProfileModelQueryFilter on QueryBuilder<
    MeasurementProfileModel, MeasurementProfileModel, QFilterCondition> {
  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> ankleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ankle',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> ankleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ankle',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> ankleEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ankle',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> ankleGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ankle',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> ankleLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ankle',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> ankleBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ankle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> armCircumferenceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'armCircumference',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> armCircumferenceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'armCircumference',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> armCircumferenceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'armCircumference',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> armCircumferenceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'armCircumference',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> armCircumferenceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'armCircumference',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> armCircumferenceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'armCircumference',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> backWidthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'backWidth',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> backWidthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'backWidth',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> backWidthEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backWidth',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> backWidthGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backWidth',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> backWidthLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backWidth',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> backWidthBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backWidth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bust',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bust',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bust',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bust',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bust',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bust',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustDistanceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bustDistance',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustDistanceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bustDistance',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustDistanceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bustDistance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustDistanceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bustDistance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustDistanceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bustDistance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustDistanceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bustDistance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustHeightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bustHeight',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustHeightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bustHeight',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustHeightEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bustHeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustHeightGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bustHeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustHeightLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bustHeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> bustHeightBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bustHeight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> calfIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'calf',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> calfIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'calf',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> calfEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calf',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> calfGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'calf',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> calfLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'calf',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> calfBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'calf',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> chestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chest',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> chestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chest',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> chestEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chest',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> chestGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chest',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> chestLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chest',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> chestBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> crotchDepthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crotchDepth',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> crotchDepthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crotchDepth',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> crotchDepthEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crotchDepth',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> crotchDepthGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'crotchDepth',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> crotchDepthLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'crotchDepth',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> crotchDepthBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'crotchDepth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> customMeasurementsJsonEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customMeasurementsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> customMeasurementsJsonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customMeasurementsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> customMeasurementsJsonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customMeasurementsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> customMeasurementsJsonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customMeasurementsJson',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> customMeasurementsJsonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customMeasurementsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> customMeasurementsJsonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customMeasurementsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
          QAfterFilterCondition>
      customMeasurementsJsonContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customMeasurementsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
          QAfterFilterCondition>
      customMeasurementsJsonMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customMeasurementsJson',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> customMeasurementsJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customMeasurementsJson',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> customMeasurementsJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customMeasurementsJson',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> heightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'height',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> heightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'height',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> heightEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'height',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> heightGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'height',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> heightLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'height',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> heightBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'height',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> hipIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hip',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> hipIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hip',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> hipEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hip',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> hipGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hip',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> hipLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hip',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> hipBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hip',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> hipHeightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hipHeight',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> hipHeightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hipHeight',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> hipHeightEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hipHeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> hipHeightGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hipHeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> hipHeightLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hipHeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> hipHeightBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hipHeight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> inseamIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'inseam',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> inseamIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'inseam',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> inseamEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inseam',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> inseamGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'inseam',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> inseamLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'inseam',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> inseamBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'inseam',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> isMetricEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMetric',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> kneeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'knee',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> kneeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'knee',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> kneeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'knee',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> kneeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'knee',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> kneeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'knee',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> kneeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'knee',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
          QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
          QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> neckIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'neck',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> neckIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'neck',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> neckEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'neck',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> neckGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'neck',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> neckLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'neck',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> neckBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'neck',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> outseamIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outseam',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> outseamIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outseam',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> outseamEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outseam',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> outseamGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'outseam',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> outseamLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'outseam',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> outseamBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'outseam',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> shoulderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shoulder',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> shoulderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shoulder',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> shoulderEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shoulder',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> shoulderGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shoulder',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> shoulderLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shoulder',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> shoulderBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shoulder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> sleeveLengthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sleeveLength',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> sleeveLengthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sleeveLength',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> sleeveLengthEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sleeveLength',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> sleeveLengthGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sleeveLength',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> sleeveLengthLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sleeveLength',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> sleeveLengthBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sleeveLength',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> thighIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'thigh',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> thighIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'thigh',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> thighEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> thighGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'thigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> thighLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'thigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> thighBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'thigh',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'waist',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'waist',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'waist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'waist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'waist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'waist',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistLengthBackIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'waistLengthBack',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistLengthBackIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'waistLengthBack',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistLengthBackEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'waistLengthBack',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistLengthBackGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'waistLengthBack',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistLengthBackLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'waistLengthBack',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistLengthBackBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'waistLengthBack',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistLengthFrontIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'waistLengthFront',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistLengthFrontIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'waistLengthFront',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistLengthFrontEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'waistLengthFront',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistLengthFrontGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'waistLengthFront',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistLengthFrontLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'waistLengthFront',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> waistLengthFrontBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'waistLengthFront',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> weightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weight',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> weightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weight',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> weightEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> weightGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> weightLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> weightBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> wristIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'wrist',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> wristIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'wrist',
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> wristEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wrist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> wristGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wrist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> wristLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wrist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel,
      QAfterFilterCondition> wristBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wrist',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension MeasurementProfileModelQueryObject on QueryBuilder<
    MeasurementProfileModel, MeasurementProfileModel, QFilterCondition> {}

extension MeasurementProfileModelQueryLinks on QueryBuilder<
    MeasurementProfileModel, MeasurementProfileModel, QFilterCondition> {}

extension MeasurementProfileModelQuerySortBy
    on QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QSortBy> {
  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByAnkle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ankle', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByAnkleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ankle', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByArmCircumference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armCircumference', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByArmCircumferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armCircumference', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByBackWidth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backWidth', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByBackWidthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backWidth', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByBust() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bust', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByBustDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bust', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByBustDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bustDistance', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByBustDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bustDistance', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByBustHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bustHeight', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByBustHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bustHeight', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByCalf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calf', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByCalfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calf', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByChest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chest', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByChestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chest', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByCrotchDepth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crotchDepth', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByCrotchDepthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crotchDepth', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByCustomMeasurementsJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customMeasurementsJson', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByCustomMeasurementsJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customMeasurementsJson', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByHip() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hip', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByHipDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hip', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByHipHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hipHeight', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByHipHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hipHeight', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByInseam() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inseam', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByInseamDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inseam', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByIsMetric() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMetric', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByIsMetricDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMetric', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByKnee() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'knee', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByKneeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'knee', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByNeck() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neck', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByNeckDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neck', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByOutseam() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outseam', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByOutseamDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outseam', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByShoulder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shoulder', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByShoulderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shoulder', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortBySleeveLength() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleeveLength', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortBySleeveLengthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleeveLength', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByThigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thigh', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByThighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thigh', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByWaist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waist', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByWaistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waist', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByWaistLengthBack() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waistLengthBack', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByWaistLengthBackDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waistLengthBack', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByWaistLengthFront() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waistLengthFront', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByWaistLengthFrontDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waistLengthFront', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByWrist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wrist', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      sortByWristDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wrist', Sort.desc);
    });
  }
}

extension MeasurementProfileModelQuerySortThenBy on QueryBuilder<
    MeasurementProfileModel, MeasurementProfileModel, QSortThenBy> {
  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByAnkle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ankle', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByAnkleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ankle', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByArmCircumference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armCircumference', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByArmCircumferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armCircumference', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByBackWidth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backWidth', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByBackWidthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backWidth', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByBust() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bust', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByBustDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bust', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByBustDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bustDistance', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByBustDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bustDistance', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByBustHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bustHeight', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByBustHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bustHeight', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByCalf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calf', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByCalfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calf', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByChest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chest', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByChestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chest', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByCrotchDepth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crotchDepth', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByCrotchDepthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crotchDepth', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByCustomMeasurementsJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customMeasurementsJson', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByCustomMeasurementsJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customMeasurementsJson', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByHip() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hip', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByHipDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hip', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByHipHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hipHeight', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByHipHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hipHeight', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByInseam() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inseam', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByInseamDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inseam', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByIsMetric() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMetric', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByIsMetricDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMetric', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByKnee() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'knee', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByKneeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'knee', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByNeck() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neck', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByNeckDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neck', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByOutseam() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outseam', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByOutseamDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outseam', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByShoulder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shoulder', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByShoulderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shoulder', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenBySleeveLength() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleeveLength', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenBySleeveLengthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleeveLength', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByThigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thigh', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByThighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thigh', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByWaist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waist', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByWaistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waist', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByWaistLengthBack() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waistLengthBack', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByWaistLengthBackDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waistLengthBack', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByWaistLengthFront() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waistLengthFront', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByWaistLengthFrontDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waistLengthFront', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByWrist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wrist', Sort.asc);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QAfterSortBy>
      thenByWristDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wrist', Sort.desc);
    });
  }
}

extension MeasurementProfileModelQueryWhereDistinct on QueryBuilder<
    MeasurementProfileModel, MeasurementProfileModel, QDistinct> {
  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByAnkle() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ankle');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByArmCircumference() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'armCircumference');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByBackWidth() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'backWidth');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByBust() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bust');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByBustDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bustDistance');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByBustHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bustHeight');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByCalf() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'calf');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByChest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chest');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByCrotchDepth() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'crotchDepth');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByCustomMeasurementsJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customMeasurementsJson',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'height');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByHip() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hip');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByHipHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hipHeight');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByInseam() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'inseam');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByIsMetric() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMetric');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByKnee() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'knee');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByNeck() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'neck');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByOutseam() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outseam');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByShoulder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shoulder');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctBySleeveLength() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sleeveLength');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByThigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'thigh');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByWaist() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'waist');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByWaistLengthBack() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'waistLengthBack');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByWaistLengthFront() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'waistLengthFront');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weight');
    });
  }

  QueryBuilder<MeasurementProfileModel, MeasurementProfileModel, QDistinct>
      distinctByWrist() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wrist');
    });
  }
}

extension MeasurementProfileModelQueryProperty on QueryBuilder<
    MeasurementProfileModel, MeasurementProfileModel, QQueryProperty> {
  QueryBuilder<MeasurementProfileModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      ankleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ankle');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      armCircumferenceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'armCircumference');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      backWidthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'backWidth');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      bustProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bust');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      bustDistanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bustDistance');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      bustHeightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bustHeight');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      calfProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'calf');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      chestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chest');
    });
  }

  QueryBuilder<MeasurementProfileModel, DateTime, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      crotchDepthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crotchDepth');
    });
  }

  QueryBuilder<MeasurementProfileModel, String, QQueryOperations>
      customMeasurementsJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customMeasurementsJson');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      heightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'height');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      hipProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hip');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      hipHeightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hipHeight');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      inseamProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'inseam');
    });
  }

  QueryBuilder<MeasurementProfileModel, bool, QQueryOperations>
      isMetricProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMetric');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      kneeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'knee');
    });
  }

  QueryBuilder<MeasurementProfileModel, String, QQueryOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      neckProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'neck');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      outseamProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outseam');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      shoulderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shoulder');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      sleeveLengthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sleeveLength');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      thighProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'thigh');
    });
  }

  QueryBuilder<MeasurementProfileModel, DateTime, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      waistProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'waist');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      waistLengthBackProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'waistLengthBack');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      waistLengthFrontProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'waistLengthFront');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      weightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weight');
    });
  }

  QueryBuilder<MeasurementProfileModel, double?, QQueryOperations>
      wristProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wrist');
    });
  }
}
