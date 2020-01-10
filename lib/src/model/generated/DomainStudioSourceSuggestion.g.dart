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
    DomainStudioSourceSuggestion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'services',
      instance.services
          ?.map((e) => _$DomainEnvelopeSearchServiceEnumMap[e])
          ?.toList());
  writeNotNull('language', instance.language);
  writeNotNull('max', instance.max);
  writeNotNull('maxSldLength', instance.maxSldLength);
  writeNotNull('useDash', instance.useDash);
  writeNotNull('useNumber', instance.useNumber);
  writeNotNull('useIdn', instance.useIdn);
  writeNotNull('tlds', instance.tlds);
  return val;
}

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
