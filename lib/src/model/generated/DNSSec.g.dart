// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DNSSec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DNSSec _$DNSSecFromJson(Map<String, dynamic> json) {
  return DNSSec(
    algorithm: json['algorithm'] as int,
    flags: json['flags'] as int,
    protocol: json['protocol'] as int,
    publicKey: json['publicKey'] as String,
  );
}

Map<String, dynamic> _$DNSSecToJson(DNSSec instance) => <String, dynamic>{
      'algorithm': instance.algorithm,
      'flags': instance.flags,
      'protocol': instance.protocol,
      'publicKey': instance.publicKey,
    };
