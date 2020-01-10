// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GenericLabelEntity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericLabelEntity _$GenericLabelEntityFromJson(Map<String, dynamic> json) {
  return GenericLabelEntity(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    label: json['label'] as String,
    name: json['name'] as String,
    packageLabel: json['packageLabel'] as String,
  );
}

Map<String, dynamic> _$GenericLabelEntityToJson(GenericLabelEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('label', instance.label);
  writeNotNull('name', instance.name);
  writeNotNull('packageLabel', instance.packageLabel);
  return val;
}
