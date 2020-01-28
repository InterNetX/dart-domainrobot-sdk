// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainServicesUpdate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainServicesUpdate _$DomainServicesUpdateFromJson(Map<String, dynamic> json) {
  return DomainServicesUpdate(
    domains: (json['domains'] as List)
        ?.map((e) =>
            e == null ? null : Domain.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    servicesAdd: json['servicesAdd'] == null
        ? null
        : DomainServices.fromJson(json['servicesAdd'] as Map<String, dynamic>),
    servicesRem: json['servicesRem'] == null
        ? null
        : DomainServices.fromJson(json['servicesRem'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DomainServicesUpdateToJson(
        DomainServicesUpdate instance) =>
    <String, dynamic>{
      'domains': instance.domains,
      'servicesAdd': instance.servicesAdd,
      'servicesRem': instance.servicesRem,
    };
