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

Map<String, dynamic> _$DomainMonitoringToJson(DomainMonitoring instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('updater', instance.updater?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('idn', instance.idn);
  writeNotNull('notificationMobiles',
      instance.notificationMobiles?.map((e) => e?.toJson())?.toList());
  writeNotNull('ocval', instance.ocval);
  writeNotNull('cancelation', instance.cancelation);
  writeNotNull('removed', instance.removed);
  writeNotNull('monitoringSetups',
      instance.monitoringSetups?.map((e) => e?.toJson())?.toList());
  writeNotNull('notificationEmails', instance.notificationEmails);
  return val;
}
