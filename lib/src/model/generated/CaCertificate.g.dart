// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CaCertificate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CaCertificate _$CaCertificateFromJson(Map<String, dynamic> json) {
  return CaCertificate(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    caType: json['caType'] as String,
    caCertificate: json['caCertificate'] as String,
  );
}

Map<String, dynamic> _$CaCertificateToJson(CaCertificate instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'caType': instance.caType,
      'caCertificate': instance.caCertificate,
    };
