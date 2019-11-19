// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EstimationService.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EstimationService _$EstimationServiceFromJson(Map<String, dynamic> json) {
  return EstimationService(
    data: json['data'] == null
        ? null
        : EstimationServiceData.fromJson(json['data'] as Map<String, dynamic>),
    debugTime: (json['debugTime'] as num)?.toDouble(),
    status: _$enumDecodeNullable(
        _$DomainStudioServiceStatusEnumMap, json['status']),
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$EstimationServiceToJson(EstimationService instance) =>
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
  DomainStudioServiceStatus.SUCCESS: 'SUCCESS',
  DomainStudioServiceStatus.RUNNING: 'RUNNING',
  DomainStudioServiceStatus.FAILED: 'FAILED',
};
