// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PriceService.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceService _$PriceServiceFromJson(Map<String, dynamic> json) {
  return PriceService(
      data: json['data'] == null
          ? null
          : PriceServiceData.fromJson(json['data'] as Map<String, dynamic>),
      debugTime: (json['debugTime'] as num)?.toDouble(),
      status: _$enumDecodeNullable(
          _$DomainStudioServiceStatusEnumMap, json['status']),
      message: json['message'] as String);
}

Map<String, dynamic> _$PriceServiceToJson(PriceService instance) =>
    <String, dynamic>{
      'debugTime': instance.debugTime,
      'status': _$DomainStudioServiceStatusEnumMap[instance.status],
      'message': instance.message,
      'data': instance.data
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$DomainStudioServiceStatusEnumMap = <DomainStudioServiceStatus, dynamic>{
  DomainStudioServiceStatus.SUCCESS: 'SUCCESS',
  DomainStudioServiceStatus.RUNNING: 'RUNNING',
  DomainStudioServiceStatus.FAILED: 'FAILED'
};
