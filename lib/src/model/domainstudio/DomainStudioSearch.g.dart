// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainStudioSearch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainStudioSearch _$DomainStudioSearchFromJson(Map<String, dynamic> json) {
  return DomainStudioSearch(
      searchToken: json['searchToken'] as String,
      currency: json['currency'] as String,
      sources: json['sources'] == null
          ? null
          : DomainStudioSources.fromJson(
              json['sources'] as Map<String, dynamic>));
}

Map<String, dynamic> _$DomainStudioSearchToJson(DomainStudioSearch instance) =>
    <String, dynamic>{
      'searchToken': instance.searchToken,
      'currency': instance.currency,
      'sources': instance.sources
    };
