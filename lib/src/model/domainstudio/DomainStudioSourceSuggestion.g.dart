// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainStudioSourceSuggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainStudioSourceSuggestion _$DomainStudioSourceSuggestionFromJson(
    Map<String, dynamic> json) {
  return DomainStudioSourceSuggestion(
    language: json['language'] as String,
    max: json['max'] as int,
    maxSldLength: json['maxSldLength'] as int,
    useDash: json['useDash'] as bool,
    useNumber: json['useNumber'] as bool,
    useIdn: json['useIdn'] as bool,
    tlds: (json['tlds'] as List)?.map((e) => e as String)?.toList(),
    services: (json['services'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$DomainStudioSourceSuggestionToJson(
        DomainStudioSourceSuggestion instance) =>
    <String, dynamic>{
      'services': instance.services,
      'language': instance.language,
      'max': instance.max,
      'maxSldLength': instance.maxSldLength,
      'useDash': instance.useDash,
      'useNumber': instance.useNumber,
      'useIdn': instance.useIdn,
      'tlds': instance.tlds,
    };
