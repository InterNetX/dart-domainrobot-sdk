// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainEnvelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainEnvelope _$DomainEnvelopeFromJson(Map<String, dynamic> json) {
  return DomainEnvelope(
    domain: json['domain'] as String,
    idn: json['idn'] as String,
    source:
        _$enumDecodeNullable(_$DomainStudioDomainSourceEnumMap, json['source']),
    services: json['services'] == null
        ? null
        : DomainStudioService.fromJson(
            json['services'] as Map<String, dynamic>),
    debugTime: json['debugTime'] as bool,
  );
}

Map<String, dynamic> _$DomainEnvelopeToJson(DomainEnvelope instance) =>
    <String, dynamic>{
      'domain': instance.domain,
      'idn': instance.idn,
      'source': _$DomainStudioDomainSourceEnumMap[instance.source],
      'services': instance.services,
      'debugTime': instance.debugTime,
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

const _$DomainStudioDomainSourceEnumMap = {
  DomainStudioDomainSource.INITIAL: 'INITIAL',
  DomainStudioDomainSource.SUGGESTION: 'SUGGESTION',
  DomainStudioDomainSource.PREMIUM: 'PREMIUM',
  DomainStudioDomainSource.GEO: 'GEO',
  DomainStudioDomainSource.SIMILAR: 'SIMILAR',
  DomainStudioDomainSource.RECOMMENDED: 'RECOMMENDED',
  DomainStudioDomainSource.CUSTOM: 'CUSTOM',
};
