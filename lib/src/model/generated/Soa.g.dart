// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Soa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Soa _$SoaFromJson(Map<String, dynamic> json) {
  return Soa(
    refresh: json['refresh'] as int,
    retry: json['retry'] as int,
    expire: json['expire'] as int,
    ttl: json['ttl'] as int,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$SoaToJson(Soa instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('refresh', instance.refresh);
  writeNotNull('retry', instance.retry);
  writeNotNull('expire', instance.expire);
  writeNotNull('ttl', instance.ttl);
  writeNotNull('email', instance.email);
  return val;
}
