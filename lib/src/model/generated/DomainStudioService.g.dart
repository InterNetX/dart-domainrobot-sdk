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

Map<String, dynamic> _$DomainStudioServiceToJson(DomainStudioService instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('whois', instance.whois?.toJson());
  writeNotNull('price', instance.price?.toJson());
  writeNotNull('estimation', instance.estimation?.toJson());
  return val;
}
