// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NameServer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NameServer _$NameServerFromJson(Map<String, dynamic> json) {
  return NameServer(name: json['name'] as String);
}

Map<String, dynamic> _$NameServerToJson(NameServer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}
