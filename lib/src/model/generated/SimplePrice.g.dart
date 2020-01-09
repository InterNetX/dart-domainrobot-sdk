// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SimplePrice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimplePrice _$SimplePriceFromJson(Map<String, dynamic> json) {
  return SimplePrice(
    price: json['price'] == null
        ? null
        : ExchangedPrice.fromJson(json['price'] as Map<String, dynamic>),
    businessCase: json['businessCase'] as String,
    period: json['period'] == null
        ? null
        : TimePeriod.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SimplePriceToJson(SimplePrice instance) =>
    <String, dynamic>{
      'price': instance.price,
      'businessCase': instance.businessCase,
      'period': instance.period,
    };
