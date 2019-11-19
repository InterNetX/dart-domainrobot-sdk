// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Vat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vat _$VatFromJson(Map<String, dynamic> json) {
  return Vat(
    rate: json['rate'] == null
        ? null
        : VatRate.fromJson(json['rate'] as Map<String, dynamic>),
    amount: (json['amount'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$VatToJson(Vat instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rate', instance.rate);
  writeNotNull('amount', instance.amount);
  return val;
}
