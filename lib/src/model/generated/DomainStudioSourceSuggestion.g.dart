// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainStudioSourceSuggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainStudioSourceSuggestion _$DomainStudioSourceSuggestionFromJson(
    Map<String, dynamic> json) {
  return DomainStudioSourceSuggestion(
    services: (json['services'] as List)
        ?.map((e) =>
            _$enumDecodeNullable(_$DomainEnvelopeSearchServiceEnumMap, e))
        ?.toList(),
    language: json['language'] as String,
    max: json['max'] as int,
    maxSldLength: json['maxSldLength'] as int,
    useDash: json['useDash'] as bool,
    useNumber: json['useNumber'] as bool,
    useIdn: json['useIdn'] as bool,
    tlds: (json['tlds'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$DomainStudioSourceSuggestionToJson(
        DomainStudioSourceSuggestion instance) =>
    <String, dynamic>{
      'services': instance.services
          ?.map((e) => _$DomainEnvelopeSearchServiceEnumMap[e])
          ?.toList(),
      'language': instance.language,
      'max': instance.max,
      'maxSldLength': instance.maxSldLength,
      'useDash': instance.useDash,
      'useNumber': instance.useNumber,
      'useIdn': instance.useIdn,
      'tlds': instance.tlds,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$DomainEnvelopeSearchServiceEnumMap = {
  DomainEnvelopeSearchService.WHOIS: 'WHOIS',
  DomainEnvelopeSearchService.PRICE: 'PRICE',
  DomainEnvelopeSearchService.ESTIMATION: 'ESTIMATION',
};
