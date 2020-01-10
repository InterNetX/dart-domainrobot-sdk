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

Map<String, dynamic> _$NameServerToJson(NameServer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('ttl', instance.ttl);
  writeNotNull('ipAddresses', instance.ipAddresses);
  return val;
}
