// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ServiceEntity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceEntity _$ServiceEntityFromJson(Map<String, dynamic> json) {
  return ServiceEntity(
    created: json['created'] as String,
    updated: json['updated'] as String,
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

  writeNotNull('created', instance.created);
  writeNotNull('updated', instance.updated);
  writeNotNull('label', instance.label);
  return val;
}
