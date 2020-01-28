// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PhysicalNameServerGroup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhysicalNameServerGroup _$PhysicalNameServerGroupFromJson(
    Map<String, dynamic> json) {
  return PhysicalNameServerGroup(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    name: json['name'] as String,
    articleLabel: json['articleLabel'] as String,
    dnssec: json['dnssec'] as bool,
    statistic: json['statistic'] as bool,
  );
}

Map<String, dynamic> _$PhysicalNameServerGroupToJson(
        PhysicalNameServerGroup instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'name': instance.name,
      'articleLabel': instance.articleLabel,
      'dnssec': instance.dnssec,
      'statistic': instance.statistic,
    };
