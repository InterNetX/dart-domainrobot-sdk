// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactTrademarkExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactTrademarkExtensions _$ContactTrademarkExtensionsFromJson(
    Map<String, dynamic> json) {
  return ContactTrademarkExtensions(
    name: json['name'] as String,
    number: json['number'] as String,
    country: json['country'] as String,
    regdate: json['regdate'] == null
        ? null
        : DateTime.parse(json['regdate'] as String),
    appdate: json['appdate'] == null
        ? null
        : DateTime.parse(json['appdate'] as String),
    office: json['office'] as String,
  );
}

Map<String, dynamic> _$ContactTrademarkExtensionsToJson(
        ContactTrademarkExtensions instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'country': instance.country,
      'regdate': instance.regdate?.toIso8601String(),
      'appdate': instance.appdate?.toIso8601String(),
      'office': instance.office,
    };
