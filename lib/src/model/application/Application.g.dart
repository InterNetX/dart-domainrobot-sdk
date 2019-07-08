// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Application _$ApplicationFromJson(Map<String, dynamic> json) {
  return Application(
      name: json['name'] as String,
      functionCodes:
          (json['functionCodes'] as List)?.map((e) => e as String)?.toList(),
      created: json['created'] as String,
      updated: json['updated'] as String);
}

Map<String, dynamic> _$ApplicationToJson(Application instance) =>
    <String, dynamic>{
      'name': instance.name,
      'functionCodes': instance.functionCodes,
      'created': instance.created,
      'updated': instance.updated
    };
