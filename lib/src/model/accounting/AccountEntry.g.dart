// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AccountEntry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountEntry _$AccountEntryFromJson(Map<String, dynamic> json) {
  return AccountEntry(
    label: json['label'] as String,
    amount: (json['amount'] as num)?.toDouble(),
    vatAmount: (json['vatAmount'] as num)?.toDouble(),
    vats: (json['vats'] as List)
        ?.map((e) => e == null ? null : Vat.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    netAmount: (json['netAmount'] as num)?.toDouble(),
    currency: json['currency'] as String,
  );
}

Map<String, dynamic> _$AccountEntryToJson(AccountEntry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('label', instance.label);
  writeNotNull('amount', instance.amount);
  writeNotNull('vatAmount', instance.vatAmount);
  writeNotNull('vats', instance.vats);
  writeNotNull('netAmount', instance.netAmount);
  writeNotNull('currency', instance.currency);
  return val;
}
