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

Map<String, dynamic> _$DomainStudioSourcesToJson(DomainStudioSources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('initial', instance.initial?.toJson());
  writeNotNull('suggestion', instance.suggestion?.toJson());
  writeNotNull('premium', instance.premium?.toJson());
  writeNotNull('geo', instance.geo?.toJson());
  writeNotNull('similar', instance.similar?.toJson());
  writeNotNull('recommended', instance.recommended?.toJson());
  return val;
}
