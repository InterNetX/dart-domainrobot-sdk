// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainStudioSourceGeo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainStudioSourceGeo _$DomainStudioSourceGeoFromJson(
    Map<String, dynamic> json) {
  return DomainStudioSourceGeo(
      max: json['max'] as int,
      services: (json['services'] as List)?.map((e) => e as String)?.toList());
}

Map<String, dynamic> _$DomainStudioSourceGeoToJson(
        DomainStudioSourceGeo instance) =>
    <String, dynamic>{'services': instance.services, 'max': instance.max};
