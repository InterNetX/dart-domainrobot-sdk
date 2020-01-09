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

Map<String, dynamic> _$PriceDataToJson(PriceData instance) => <String, dynamic>{
      'prices': instance.prices,
    };
