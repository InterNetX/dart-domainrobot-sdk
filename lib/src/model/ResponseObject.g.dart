// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ResponseObject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseObject _$ResponseObjectFromJson(Map<String, dynamic> json) {
  return ResponseObject(json['type'] as String, json['value'] as String,
      json['summary'] as int, json['data']);
}

Map<String, dynamic> _$ResponseObjectToJson(ResponseObject instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'summary': instance.summary,
      'data': instance.data
    };
