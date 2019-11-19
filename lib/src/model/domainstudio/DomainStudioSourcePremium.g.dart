// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainStudioSourcePremium.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainStudioSourcePremium _$DomainStudioSourcePremiumFromJson(
    Map<String, dynamic> json) {
  return DomainStudioSourcePremium(
    promoTlds: (json['promoTlds'] as List)?.map((e) => e as String)?.toList(),
    topTlds: (json['topTlds'] as List)?.map((e) => e as String)?.toList(),
    max: json['max'] as int,
    services: (json['services'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$DomainStudioSourcePremiumToJson(
        DomainStudioSourcePremium instance) =>
    <String, dynamic>{
      'services': instance.services,
      'promoTlds': instance.promoTlds,
      'topTlds': instance.topTlds,
      'max': instance.max,
    };
