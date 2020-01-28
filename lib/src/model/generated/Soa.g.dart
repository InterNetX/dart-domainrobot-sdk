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

Map<String, dynamic> _$SoaToJson(Soa instance) => <String, dynamic>{
      'refresh': instance.refresh,
      'retry': instance.retry,
      'expire': instance.expire,
      'ttl': instance.ttl,
      'email': instance.email,
    };
