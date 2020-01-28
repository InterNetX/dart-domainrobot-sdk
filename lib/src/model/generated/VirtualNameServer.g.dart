// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VirtualNameServer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VirtualNameServer _$VirtualNameServerFromJson(Map<String, dynamic> json) {
  return VirtualNameServer(
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
    active: json['active'] as bool,
    name: json['name'] == null
        ? null
        : Name.fromJson(json['name'] as Map<String, dynamic>),
    mainAddress: json['mainAddress'] == null
        ? null
        : InetAddress.fromJson(json['mainAddress'] as Map<String, dynamic>),
    ipAddresses:
        (json['ipAddresses'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$VirtualNameServerToJson(VirtualNameServer instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'active': instance.active,
      'name': instance.name,
      'mainAddress': instance.mainAddress,
      'ipAddresses': instance.ipAddresses,
    };
