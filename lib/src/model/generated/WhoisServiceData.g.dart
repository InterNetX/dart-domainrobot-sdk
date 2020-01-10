// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WhoisServiceData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WhoisServiceData _$WhoisServiceDataFromJson(Map<String, dynamic> json) {
  return WhoisServiceData(
    debugTime: json['debugTime'] as int,
    status: _$enumDecodeNullable(
        _$DomainStudioServiceStatusEnumMap, json['status']),
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : WhoisStatus.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WhoisServiceDataToJson(WhoisServiceData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('debugTime', instance.debugTime);
  writeNotNull('status', _$DomainStudioServiceStatusEnumMap[instance.status]);
  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data?.toJson());
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

const _$DomainStudioServiceStatusEnumMap = {
  DomainStudioServiceStatus.RUNNING: 'RUNNING',
  DomainStudioServiceStatus.SUCCESS: 'SUCCESS',
  DomainStudioServiceStatus.FAILED: 'FAILED',
  DomainStudioServiceStatus.TIMEOUT: 'TIMEOUT',
};
