// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ResourceRecord.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResourceRecord _$ResourceRecordFromJson(Map<String, dynamic> json) {
  return ResourceRecord(
    name: json['name'] as String,
    ttl: json['ttl'] as int,
    type: json['type'] as String,
    value: json['value'] as String,
    pref: json['pref'] as int,
  );
}

Map<String, dynamic> _$ResourceRecordToJson(ResourceRecord instance) =>
    <String, dynamic>{
      'name': instance.name,
      'ttl': instance.ttl,
      'type': instance.type,
      'value': instance.value,
      'pref': instance.pref,
    };
