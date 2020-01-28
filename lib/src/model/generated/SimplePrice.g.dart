// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SimplePrice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimplePrice _$SimplePriceFromJson(Map<String, dynamic> json) {
  return SimplePrice(
    amount: (json['amount'] as num)?.toDouble(),
    netAmount: (json['netAmount'] as num)?.toDouble(),
    vatAmount: (json['vatAmount'] as num)?.toDouble(),
    currency: json['currency'] as String,
    price: json['price'] == null
        ? null
        : ExchangedPrice.fromJson(json['price'] as Map<String, dynamic>),
    businessCase: json['businessCase'] as String,
    period: json['period'] == null
        ? null
        : TimePeriod.fromJson(json['period'] as Map<String, dynamic>),
    customs: (json['customs'] as List)
        ?.map((e) =>
            e == null ? null : Custom.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    view: json['view'] == null
        ? null
        : CurrencyRate.fromJson(json['view'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SimplePriceToJson(SimplePrice instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'netAmount': instance.netAmount,
      'vatAmount': instance.vatAmount,
      'currency': instance.currency,
      'price': instance.price,
      'businessCase': instance.businessCase,
      'period': instance.period,
      'customs': instance.customs,
      'view': instance.view,
    };
