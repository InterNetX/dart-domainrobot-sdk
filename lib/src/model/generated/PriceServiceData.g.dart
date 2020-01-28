// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PriceServiceData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceServiceData _$PriceServiceDataFromJson(Map<String, dynamic> json) {
  return PriceServiceData(
    debugTime: json['debugTime'] as int,
    status: _$enumDecodeNullable(
        _$DomainStudioServiceStatusEnumMap, json['status']),
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : PriceData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PriceServiceDataToJson(PriceServiceData instance) =>
    <String, dynamic>{
      'debugTime': instance.debugTime,
      'status': _$DomainStudioServiceStatusEnumMap[instance.status],
      'message': instance.message,
      'data': instance.data,
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

const _$DomainStudioServiceStatusEnumMap = {
  DomainStudioServiceStatus.RUNNING: 'RUNNING',
  DomainStudioServiceStatus.SUCCESS: 'SUCCESS',
  DomainStudioServiceStatus.FAILED: 'FAILED',
  DomainStudioServiceStatus.TIMEOUT: 'TIMEOUT',
};
