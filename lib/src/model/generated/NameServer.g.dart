// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NameServer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NameServer _$NameServerFromJson(Map<String, dynamic> json) {
  return NameServer(
    name: json['name'] as String,
    ttl: json['ttl'] as int,
    ipAddresses:
        (json['ipAddresses'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$NameServerToJson(NameServer instance) =>
    <String, dynamic>{
      'name': instance.name,
      'ttl': instance.ttl,
      'ipAddresses': instance.ipAddresses,
    };
