// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TimePeriod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimePeriod _$TimePeriodFromJson(Map<String, dynamic> json) {
  return TimePeriod(
    unit: _$enumDecodeNullable(_$TimeUnitConstantsEnumMap, json['unit']),
    period: json['period'] as int,
  );
}

Map<String, dynamic> _$TimePeriodToJson(TimePeriod instance) =>
    <String, dynamic>{
      'unit': _$TimeUnitConstantsEnumMap[instance.unit],
      'period': instance.period,
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

const _$TimeUnitConstantsEnumMap = {
  TimeUnitConstants.MILLISECOND: 'MILLISECOND',
  TimeUnitConstants.SECOND: 'SECOND',
  TimeUnitConstants.MINUTE: 'MINUTE',
  TimeUnitConstants.HOUR: 'HOUR',
  TimeUnitConstants.DAY: 'DAY',
  TimeUnitConstants.WEEK: 'WEEK',
  TimeUnitConstants.MONTH: 'MONTH',
  TimeUnitConstants.QUARTER: 'QUARTER',
  TimeUnitConstants.YEAR: 'YEAR',
};
