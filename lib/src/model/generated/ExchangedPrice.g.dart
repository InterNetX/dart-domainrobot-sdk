// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ExchangedPrice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangedPrice _$ExchangedPriceFromJson(Map<String, dynamic> json) {
  return ExchangedPrice(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    owner: json['owner'] == null
        ? null
        : BasicUser.fromJson(json['owner'] as Map<String, dynamic>),
    updater: json['updater'] == null
        ? null
        : BasicUser.fromJson(json['updater'] as Map<String, dynamic>),
    amount: (json['amount'] as num)?.toDouble(),
    type: _$enumDecodeNullable(_$PriceTypeConstantsEnumMap, json['type']),
    currency: json['currency'] as String,
    priority:
        _$enumDecodeNullable(_$PriorityConstantsEnumMap, json['priority']),
    customer: json['customer'] == null
        ? null
        : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : TimePeriod.fromJson(json['period'] as Map<String, dynamic>),
    discountable: json['discountable'] as bool,
    logId: json['logId'] as int,
    refund: json['refund'] as int,
    priceConditions: (json['priceConditions'] as List)
        ?.map((e) => e == null
            ? null
            : PriceServiceEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    comment: json['comment'] as String,
    normalPrice: json['normalPrice'] == null
        ? null
        : ExchangedPrice.fromJson(json['normalPrice'] as Map<String, dynamic>),
    valid:
        json['valid'] == null ? null : DateTime.parse(json['valid'] as String),
    vatRate: (json['vatRate'] as num)?.toDouble(),
    vatAmount: (json['vatAmount'] as num)?.toDouble(),
    rate: (json['rate'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$ExchangedPriceToJson(ExchangedPrice instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'amount': instance.amount,
      'type': _$PriceTypeConstantsEnumMap[instance.type],
      'currency': instance.currency,
      'priority': _$PriorityConstantsEnumMap[instance.priority],
      'customer': instance.customer,
      'period': instance.period,
      'discountable': instance.discountable,
      'logId': instance.logId,
      'refund': instance.refund,
      'priceConditions': instance.priceConditions,
      'comment': instance.comment,
      'normalPrice': instance.normalPrice,
      'valid': instance.valid?.toIso8601String(),
      'vatRate': instance.vatRate,
      'vatAmount': instance.vatAmount,
      'rate': instance.rate,
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

const _$PriceTypeConstantsEnumMap = {
  PriceTypeConstants.GROSS: 'GROSS',
  PriceTypeConstants.NET: 'NET',
};

const _$PriorityConstantsEnumMap = {
  PriorityConstants.DEFAULT: 'DEFAULT',
  PriorityConstants.OFFER: 'OFFER',
  PriorityConstants.PROTECTED: 'PROTECTED',
  PriorityConstants.PROMO: 'PROMO',
};
