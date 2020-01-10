// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MainIp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainIp _$MainIpFromJson(Map<String, dynamic> json) {
  return MainIp(
    address: json['address'] as String,
    ttl: json['ttl'] as int,
  );
}

Map<String, dynamic> _$MainIpToJson(MainIp instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('ttl', instance.ttl);
  return val;
}
