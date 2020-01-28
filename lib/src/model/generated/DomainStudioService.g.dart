// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainStudioService.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainStudioService _$DomainStudioServiceFromJson(Map<String, dynamic> json) {
  return DomainStudioService(
    whois: json['whois'] == null
        ? null
        : WhoisServiceData.fromJson(json['whois'] as Map<String, dynamic>),
    price: json['price'] == null
        ? null
        : PriceServiceData.fromJson(json['price'] as Map<String, dynamic>),
    estimation: json['estimation'] == null
        ? null
        : EstimationServiceData.fromJson(
            json['estimation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DomainStudioServiceToJson(
        DomainStudioService instance) =>
    <String, dynamic>{
      'whois': instance.whois,
      'price': instance.price,
      'estimation': instance.estimation,
    };
