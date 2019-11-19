// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PriceServiceData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceServiceData _$PriceServiceDataFromJson(Map<String, dynamic> json) {
  return PriceServiceData(
    prices: (json['prices'] as List)
        ?.map((e) =>
            e == null ? null : SimplePrice.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PriceServiceDataToJson(PriceServiceData instance) =>
    <String, dynamic>{
      'prices': instance.prices,
    };
