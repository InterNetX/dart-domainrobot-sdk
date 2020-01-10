// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ServiceEntity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceEntity _$ServiceEntityFromJson(Map<String, dynamic> json) {
  return ServiceEntity(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    label: json['label'] as String,
  );
}

Map<String, dynamic> _$ServiceEntityToJson(ServiceEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('label', instance.label);
  return val;
}
