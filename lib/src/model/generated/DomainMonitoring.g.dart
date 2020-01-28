// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainMonitoring.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainMonitoring _$DomainMonitoringFromJson(Map<String, dynamic> json) {
  return DomainMonitoring(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    owner: json['owner'] == null
        ? null
        : BasicUser.fromJson(json['owner'] as Map<String, dynamic>),
    updater: json['updater'] == null
        ? null
        : BasicUser.fromJson(json['updater'] as Map<String, dynamic>),
    name: json['name'] as String,
    idn: json['idn'] as String,
    notificationMobiles: (json['notificationMobiles'] as List)
        ?.map(
            (e) => e == null ? null : Phone.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    ocval: json['ocval'] as bool,
    cancelation: json['cancelation'] as bool,
    removed: json['removed'] as bool,
    monitoringSetups: (json['monitoringSetups'] as List)
        ?.map((e) => e == null
            ? null
            : DomainMonitoringSetup.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    notificationEmails:
        (json['notificationEmails'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$DomainMonitoringToJson(DomainMonitoring instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'name': instance.name,
      'idn': instance.idn,
      'notificationMobiles': instance.notificationMobiles,
      'ocval': instance.ocval,
      'cancelation': instance.cancelation,
      'removed': instance.removed,
      'monitoringSetups': instance.monitoringSetups,
      'notificationEmails': instance.notificationEmails,
    };
