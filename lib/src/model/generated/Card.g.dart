// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) {
  return Card(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    type: _$enumDecodeNullable(_$CreditCardVendorEnumMap, json['type']),
    status: _$enumDecodeNullable(_$CardStatusEnumMap, json['status']),
    validFrom: json['validFrom'] == null
        ? null
        : DateTime.parse(json['validFrom'] as String),
    validTo: json['validTo'] == null
        ? null
        : DateTime.parse(json['validTo'] as String),
  );
}

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'type': _$CreditCardVendorEnumMap[instance.type],
      'status': _$CardStatusEnumMap[instance.status],
      'validFrom': instance.validFrom?.toIso8601String(),
      'validTo': instance.validTo?.toIso8601String(),
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

const _$CreditCardVendorEnumMap = {
  CreditCardVendor.MC: 'MC',
  CreditCardVendor.VISA: 'VISA',
  CreditCardVendor.AMEX: 'AMEX',
  CreditCardVendor.DIC: 'DIC',
  CreditCardVendor.DISC: 'DISC',
  CreditCardVendor.CB: 'CB',
};

const _$CardStatusEnumMap = {
  CardStatus.LOST: 'LOST',
  CardStatus.EXPIRED: 'EXPIRED',
  CardStatus.ACTIVE: 'ACTIVE',
};
