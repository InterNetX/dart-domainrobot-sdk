// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    text: json['text'] as String,
    messages: (json['messages'] as List)
        ?.map((e) =>
            e == null ? null : Message.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    objects: (json['objects'] as List)
        ?.map((e) => e == null
            ? null
            : GenericObject.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    status: _$enumDecodeNullable(_$StatusTypeEnumMap, json['status']),
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'text': instance.text,
      'messages': instance.messages,
      'objects': instance.objects,
      'code': instance.code,
      'status': _$StatusTypeEnumMap[instance.status],
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
