// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VirtualNameServerGroup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VirtualNameServerGroup _$VirtualNameServerGroupFromJson(
    Map<String, dynamic> json) {
  return VirtualNameServerGroup(
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
    useDefaultIps: json['useDefaultIps'] as bool,
    nameServers: (json['nameServers'] as List)
        ?.map((e) => e == null
            ? null
            : VirtualNameServer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    systemNameServerGroup: json['systemNameServerGroup'] == null
        ? null
        : PhysicalNameServerGroup.fromJson(
            json['systemNameServerGroup'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VirtualNameServerGroupToJson(
    VirtualNameServerGroup instance) {
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
  writeNotNull('useDefaultIps', instance.useDefaultIps);
  writeNotNull(
      'nameServers', instance.nameServers?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'systemNameServerGroup', instance.systemNameServerGroup?.toJson());
  return val;
}
