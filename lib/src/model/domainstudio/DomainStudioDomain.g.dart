// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainStudioDomain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainStudioDomain _$DomainStudioDomainFromJson(Map<String, dynamic> json) {
  return DomainStudioDomain(
      domain: json['domain'] as String,
      idn: json['idn'] as String,
      source: _$enumDecodeNullable(_$DomainStudioSourceEnumMap, json['source']),
      services: json['services'] == null
          ? null
          : DomainStudioServices.fromJson(
              json['services'] as Map<String, dynamic>));
}

Map<String, dynamic> _$DomainStudioDomainToJson(DomainStudioDomain instance) =>
    <String, dynamic>{
      'domain': instance.domain,
      'idn': instance.idn,
      'source': _$DomainStudioSourceEnumMap[instance.source],
      'services': instance.services
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$DomainStudioSourceEnumMap = <DomainStudioSource, dynamic>{
  DomainStudioSource.INITIAL: 'INITIAL',
  DomainStudioSource.SUGGESTION: 'SUGGESTION',
  DomainStudioSource.PREMIUM: 'PREMIUM',
  DomainStudioSource.GEO: 'GEO',
  DomainStudioSource.SIMILAR: 'SIMILAR',
  DomainStudioSource.RECOMMENDED: 'RECOMMENDED'
};
