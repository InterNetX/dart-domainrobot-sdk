// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SimplePrice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimplePrice _$SimplePriceFromJson(Map<String, dynamic> json) {
  return SimplePrice(
      businessCase: json['businessCase'] as String,
      price: json['price'] == null
          ? null
          : ExchangedPrice.fromJson(json['price'] as Map<String, dynamic>));
}

Map<String, dynamic> _$SimplePriceToJson(SimplePrice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price', instance.price);
  writeNotNull('businessCase', instance.businessCase);
  return val;
}
