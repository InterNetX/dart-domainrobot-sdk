// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CurrencyRate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyRate _$CurrencyRateFromJson(Map<String, dynamic> json) {
  return CurrencyRate(
    currency: json['currency'] as String,
    rate: (json['rate'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$CurrencyRateToJson(CurrencyRate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currency', instance.currency);
  writeNotNull('rate', instance.rate);
  return val;
}
