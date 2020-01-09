// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainParkingExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainParkingExtensions _$DomainParkingExtensionsFromJson(
    Map<String, dynamic> json) {
  return DomainParkingExtensions(
    parkingCategory: json['parkingCategory'] as String,
    currency: json['currency'] as String,
    domainLanguage: json['domainLanguage'] as String,
    forSale: json['forSale'] as bool,
    keyword: json['keyword'] as String,
    price: (json['price'] as num)?.toDouble(),
    fixedPrice: json['fixedPrice'] as bool,
    minPrice: (json['minPrice'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$DomainParkingExtensionsToJson(
        DomainParkingExtensions instance) =>
    <String, dynamic>{
      'parkingCategory': instance.parkingCategory,
      'currency': instance.currency,
      'domainLanguage': instance.domainLanguage,
      'forSale': instance.forSale,
      'keyword': instance.keyword,
      'price': instance.price,
      'fixedPrice': instance.fixedPrice,
      'minPrice': instance.minPrice,
    };
