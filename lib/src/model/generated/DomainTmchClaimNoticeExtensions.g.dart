// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainTmchClaimNoticeExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainTmchClaimNoticeExtensions _$DomainTmchClaimNoticeExtensionsFromJson(
    Map<String, dynamic> json) {
  return DomainTmchClaimNoticeExtensions(
    externalReference: json['externalReference'] as String,
    notAfter: json['notAfter'] == null
        ? null
        : DateTime.parse(json['notAfter'] as String),
    confirmed: json['confirmed'] == null
        ? null
        : DateTime.parse(json['confirmed'] as String),
    confirmIp: json['confirmIp'] as String,
  );
}

Map<String, dynamic> _$DomainTmchClaimNoticeExtensionsToJson(
        DomainTmchClaimNoticeExtensions instance) =>
    <String, dynamic>{
      'externalReference': instance.externalReference,
      'notAfter': instance.notAfter?.toIso8601String(),
      'confirmed': instance.confirmed?.toIso8601String(),
      'confirmIp': instance.confirmIp,
    };
