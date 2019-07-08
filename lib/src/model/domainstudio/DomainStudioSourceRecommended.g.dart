// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainStudioSourceRecommended.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainStudioSourceRecommended _$DomainStudioSourceRecommendedFromJson(
    Map<String, dynamic> json) {
  return DomainStudioSourceRecommended(
      max: json['max'] as int,
      services: (json['services'] as List)?.map((e) => e as String)?.toList());
}

Map<String, dynamic> _$DomainStudioSourceRecommendedToJson(
        DomainStudioSourceRecommended instance) =>
    <String, dynamic>{'services': instance.services, 'max': instance.max};
