// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ResponseStatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseStatus _$ResponseStatusFromJson(Map<String, dynamic> json) {
  return ResponseStatus(
    code: json['code'] as String,
    text: json['text'] as String,
    type: _$enumDecodeNullable(_$StatusTypeEnumMap, json['type']),
  );
}

Map<String, dynamic> _$ResponseStatusToJson(ResponseStatus instance) =>
    <String, dynamic>{
      'code': instance.code,
      'text': instance.text,
      'type': _$StatusTypeEnumMap[instance.type],
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

const _$StatusTypeEnumMap = {
  StatusType.SUCCESS: 'SUCCESS',
  StatusType.ERROR: 'ERROR',
  StatusType.NOTIFY: 'NOTIFY',
  StatusType.NOTICE: 'NOTICE',
  StatusType.NICCOM_NOTIFY: 'NICCOM_NOTIFY',
};
