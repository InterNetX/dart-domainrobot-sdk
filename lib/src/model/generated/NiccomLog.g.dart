// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NiccomLog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NiccomLog _$NiccomLogFromJson(Map<String, dynamic> json) {
  return NiccomLog(
    jobId: json['jobId'] as int,
    vertexId: json['vertexId'] as int,
    name: json['name'] as String,
    task: json['task'] as String,
    nicTransactionId: json['nicTransactionId'] as String,
    source:
        _$enumDecodeNullable(_$NiccomSourceConstantsEnumMap, json['source']),
    text: json['text'] as String,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
  );
}

Map<String, dynamic> _$NiccomLogToJson(NiccomLog instance) => <String, dynamic>{
      'jobId': instance.jobId,
      'vertexId': instance.vertexId,
      'name': instance.name,
      'task': instance.task,
      'nicTransactionId': instance.nicTransactionId,
      'source': _$NiccomSourceConstantsEnumMap[instance.source],
      'text': instance.text,
      'created': instance.created?.toIso8601String(),
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

const _$NiccomSourceConstantsEnumMap = {
  NiccomSourceConstants.NIC_REQUEST: 'NIC_REQUEST',
  NiccomSourceConstants.NIC_RESPONSE: 'NIC_RESPONSE',
  NiccomSourceConstants.NIC_NOTIFY: 'NIC_NOTIFY',
  NiccomSourceConstants.A3_REQUEST: 'A3_REQUEST',
  NiccomSourceConstants.A3_RESPONSE: 'A3_RESPONSE',
};
