// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QueryFilter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryFilter _$QueryFilterFromJson(Map<String, dynamic> json) {
  return QueryFilter(
    key: json['key'] as String,
    value: json['value'] as String,
    operator_: _$enumDecodeNullable(_$ModelOperatorEnumMap, json['operator_']),
    link: _$enumDecodeNullable(_$ConditionTypeEnumMap, json['link']),
    filters: (json['filters'] as List)
        ?.map((e) =>
            e == null ? null : QueryFilter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$QueryFilterToJson(QueryFilter instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'operator_': _$ModelOperatorEnumMap[instance.operator_],
      'link': _$ConditionTypeEnumMap[instance.link],
      'filters': instance.filters,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ModelOperatorEnumMap = {
  ModelOperator.EQUAL: 'EQUAL',
  ModelOperator.NOT_EQUAL: 'NOT_EQUAL',
  ModelOperator.NOT_LIKE: 'NOT_LIKE',
  ModelOperator.LIKE: 'LIKE',
  ModelOperator.ILIKE: 'ILIKE',
  ModelOperator.GREATER: 'GREATER',
  ModelOperator.GREATER_EQUAL: 'GREATER_EQUAL',
  ModelOperator.LESS: 'LESS',
  ModelOperator.LESS_EQUAL: 'LESS_EQUAL',
  ModelOperator.IS_NULL: 'IS_NULL',
  ModelOperator.IS_NOT_NULL: 'IS_NOT_NULL',
  ModelOperator.IN: 'IN',
};

const _$ConditionTypeEnumMap = {
  ConditionType.AND: 'AND',
  ConditionType.OR: 'OR',
};
