// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PriceServiceEntity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceServiceEntity _$PriceServiceEntityFromJson(Map<String, dynamic> json) {
  return PriceServiceEntity(
    condition: json['condition'] == null
        ? null
        : ServiceEntity.fromJson(json['condition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PriceServiceEntityToJson(PriceServiceEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('condition', instance.condition);
  return val;
}
