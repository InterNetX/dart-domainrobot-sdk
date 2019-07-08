// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainStudioServices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainStudioServices _$DomainStudioServicesFromJson(Map<String, dynamic> json) {
  return DomainStudioServices(
      whois: json['whois'] == null
          ? null
          : WhoisService.fromJson(json['whois'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : PriceService.fromJson(json['price'] as Map<String, dynamic>),
      estimation: json['estimation'] == null
          ? null
          : EstimationService.fromJson(
              json['estimation'] as Map<String, dynamic>));
}

Map<String, dynamic> _$DomainStudioServicesToJson(
        DomainStudioServices instance) =>
    <String, dynamic>{
      'whois': instance.whois,
      'price': instance.price,
      'estimation': instance.estimation
    };
