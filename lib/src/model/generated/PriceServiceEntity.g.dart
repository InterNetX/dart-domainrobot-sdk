// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PriceServiceEntity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceServiceEntity _$PriceServiceEntityFromJson(Map<String, dynamic> json) {
  return PriceServiceEntity(
    configuration: json['configuration'] as Map<String, dynamic>,
    condition: json['condition'] == null
        ? null
        : ServiceEntity.fromJson(json['condition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PriceServiceEntityToJson(PriceServiceEntity instance) =>
    <String, dynamic>{
      'configuration': instance.configuration,
      'condition': instance.condition,
    };
