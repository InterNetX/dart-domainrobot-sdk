// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainStudioSourceSimilar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainStudioSourceSimilar _$DomainStudioSourceSimilarFromJson(
    Map<String, dynamic> json) {
  return DomainStudioSourceSimilar(
      max: json['max'] as int,
      tlds: (json['tlds'] as List)?.map((e) => e as String)?.toList(),
      services: (json['services'] as List)?.map((e) => e as String)?.toList());
}

Map<String, dynamic> _$DomainStudioSourceSimilarToJson(
        DomainStudioSourceSimilar instance) =>
    <String, dynamic>{
      'services': instance.services,
      'max': instance.max,
      'tlds': instance.tlds
    };
