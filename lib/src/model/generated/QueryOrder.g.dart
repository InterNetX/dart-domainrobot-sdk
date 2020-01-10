// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QueryOrder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryOrder _$QueryOrderFromJson(Map<String, dynamic> json) {
  return QueryOrder(
    key: json['key'] as String,
    ins: (json['ins'] as List)?.map((e) => e as String)?.toList(),
    type: _$enumDecodeNullable(_$OrderTypeEnumMap, json['type']),
  );
}

Map<String, dynamic> _$QueryOrderToJson(QueryOrder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('ins', instance.ins);
  writeNotNull('type', _$OrderTypeEnumMap[instance.type]);
  return val;
}

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

const _$OrderTypeEnumMap = {
  OrderType.DESC: 'DESC',
  OrderType.ASC: 'ASC',
};
