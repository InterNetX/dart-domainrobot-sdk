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

Map<String, dynamic> _$ResourceRecordToJson(ResourceRecord instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('ttl', instance.ttl);
  writeNotNull('type', instance.type);
  writeNotNull('value', instance.value);
  writeNotNull('pref', instance.pref);
  return val;
}
