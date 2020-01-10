// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainStudioSourcePremium.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainStudioSourcePremium _$DomainStudioSourcePremiumFromJson(
    Map<String, dynamic> json) {
  return DomainStudioSourcePremium(
    services: (json['services'] as List)
        ?.map((e) =>
            _$enumDecodeNullable(_$DomainEnvelopeSearchServiceEnumMap, e))
        ?.toList(),
    promoTlds: (json['promoTlds'] as List)?.map((e) => e as String)?.toList(),
    topTlds: (json['topTlds'] as List)?.map((e) => e as String)?.toList(),
    max: json['max'] as int,
  );
}

Map<String, dynamic> _$DomainStudioSourcePremiumToJson(
    DomainStudioSourcePremium instance) {
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
  writeNotNull('promoTlds', instance.promoTlds);
  writeNotNull('topTlds', instance.topTlds);
  writeNotNull('max', instance.max);
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
