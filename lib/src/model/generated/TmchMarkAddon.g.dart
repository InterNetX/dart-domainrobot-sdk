// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TmchMarkAddon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TmchMarkAddon _$TmchMarkAddonFromJson(Map<String, dynamic> json) {
  return TmchMarkAddon(
    courtName: json['courtName'] as String,
    protection: json['protection'] == null
        ? null
        : DateTime.parse(json['protection'] as String),
    courtProtectionCountry: json['courtProtectionCountry'] as String,
    courtReference: json['courtReference'] as String,
    treatyTitle: json['treatyTitle'] as String,
    treatyExecution: json['treatyExecution'] == null
        ? null
        : DateTime.parse(json['treatyExecution'] as String),
    trademarkRegistration: json['trademarkRegistration'] == null
        ? null
        : DateTime.parse(json['trademarkRegistration'] as String),
    trademarkClassification: json['trademarkClassification'] as String,
    trademarkExpire: json['trademarkExpire'] == null
        ? null
        : DateTime.parse(json['trademarkExpire'] as String),
    trademarkNumber: json['trademarkNumber'] as String,
    trademarkJurisdiction: json['trademarkJurisdiction'] as String,
    parentReference: json['parentReference'] as String,
  );
}

Map<String, dynamic> _$TmchMarkAddonToJson(TmchMarkAddon instance) =>
    <String, dynamic>{
      'courtName': instance.courtName,
      'protection': instance.protection?.toIso8601String(),
      'courtProtectionCountry': instance.courtProtectionCountry,
      'courtReference': instance.courtReference,
      'treatyTitle': instance.treatyTitle,
      'treatyExecution': instance.treatyExecution?.toIso8601String(),
      'trademarkRegistration':
          instance.trademarkRegistration?.toIso8601String(),
      'trademarkClassification': instance.trademarkClassification,
      'trademarkExpire': instance.trademarkExpire?.toIso8601String(),
      'trademarkNumber': instance.trademarkNumber,
      'trademarkJurisdiction': instance.trademarkJurisdiction,
      'parentReference': instance.parentReference,
    };
