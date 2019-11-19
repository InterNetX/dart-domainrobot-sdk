// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WhoisServiceData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WhoisServiceData _$WhoisServiceDataFromJson(Map<String, dynamic> json) {
  return WhoisServiceData(
    status: _$enumDecodeNullable(_$WhoisStatusEnumMap, json['status']),
  );
}

Map<String, dynamic> _$WhoisServiceDataToJson(WhoisServiceData instance) =>
    <String, dynamic>{
      'status': _$WhoisStatusEnumMap[instance.status],
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

const _$WhoisStatusEnumMap = {
  WhoisStatus.FREE: 'FREE',
  WhoisStatus.ASSIGNED: 'ASSIGNED',
  WhoisStatus.MARKET: 'MARKET',
  WhoisStatus.PREMIUM: 'PREMIUM',
  WhoisStatus.INVALID: 'INVALID',
  WhoisStatus.ERROR: 'ERROR',
  WhoisStatus.TIMEOUT: 'TIMEOUT',
};
