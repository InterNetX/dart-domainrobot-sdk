// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainStudioSources.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainStudioSources _$DomainStudioSourcesFromJson(Map<String, dynamic> json) {
  return DomainStudioSources(
    initial: json['initial'] == null
        ? null
        : DomainStudioSourceInitial.fromJson(
            json['initial'] as Map<String, dynamic>),
    suggestion: json['suggestion'] == null
        ? null
        : DomainStudioSourceSuggestion.fromJson(
            json['suggestion'] as Map<String, dynamic>),
    premium: json['premium'] == null
        ? null
        : DomainStudioSourcePremium.fromJson(
            json['premium'] as Map<String, dynamic>),
    geo: json['geo'] == null
        ? null
        : DomainStudioSourceGeo.fromJson(json['geo'] as Map<String, dynamic>),
    similar: json['similar'] == null
        ? null
        : DomainStudioSourceSimilar.fromJson(
            json['similar'] as Map<String, dynamic>),
    recommended: json['recommended'] == null
        ? null
        : DomainStudioSourceSimilar.fromJson(
            json['recommended'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DomainStudioSourcesToJson(
        DomainStudioSources instance) =>
    <String, dynamic>{
      'initial': instance.initial,
      'suggestion': instance.suggestion,
      'premium': instance.premium,
      'geo': instance.geo,
      'similar': instance.similar,
      'recommended': instance.recommended,
    };
