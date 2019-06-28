// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ResponseStatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseStatus _$ResponseStatusFromJson(Map<String, dynamic> json) {
  return ResponseStatus(
      json['code'] as String, json['text'] as String, json['type'] as String);
}

Map<String, dynamic> _$ResponseStatusToJson(ResponseStatus instance) =>
    <String, dynamic>{
      'code': instance.code,
      'text': instance.text,
      'type': instance.type
    };
