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

Map<String, dynamic> _$GenericLabelEntityToJson(GenericLabelEntity instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'label': instance.label,
      'name': instance.name,
      'packageLabel': instance.packageLabel,
    };
