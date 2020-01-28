// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainMonitoringSetup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainMonitoringSetup _$DomainMonitoringSetupFromJson(
    Map<String, dynamic> json) {
  return DomainMonitoringSetup(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    data: json['data'] as String,
  );
}

Map<String, dynamic> _$DomainMonitoringSetupToJson(
        DomainMonitoringSetup instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'data': instance.data,
    };
