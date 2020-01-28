// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ResponseObject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseObject _$ResponseObjectFromJson(Map<String, dynamic> json) {
  return ResponseObject(
    type: json['type'] as String,
    value: json['value'] as String,
    summary: json['summary'] as int,
    data: json['data'],
  );
}

Map<String, dynamic> _$ResponseObjectToJson(ResponseObject instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'summary': instance.summary,
      'data': instance.data,
    };
