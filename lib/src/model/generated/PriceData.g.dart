// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PriceData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceData _$PriceDataFromJson(Map<String, dynamic> json) {
  return PriceData(
    prices: (json['prices'] as List)
        ?.map((e) =>
            e == null ? null : SimplePrice.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PriceDataToJson(PriceData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('prices', instance.prices?.map((e) => e?.toJson())?.toList());
  return val;
}
