// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Application _$ApplicationFromJson(Map<String, dynamic> json) {
  return Application(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    name: json['name'] as String,
    functionCodes:
        (json['functionCodes'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ApplicationToJson(Application instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('name', instance.name);
  writeNotNull('functionCodes', instance.functionCodes);
  return val;
}
