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

Map<String, dynamic> _$DNSSecToJson(DNSSec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('algorithm', instance.algorithm);
  writeNotNull('flags', instance.flags);
  writeNotNull('protocol', instance.protocol);
  writeNotNull('publicKey', instance.publicKey);
  return val;
}
