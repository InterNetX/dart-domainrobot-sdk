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
    DomainParkingExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('parkingCategory', instance.parkingCategory);
  writeNotNull('currency', instance.currency);
  writeNotNull('domainLanguage', instance.domainLanguage);
  writeNotNull('forSale', instance.forSale);
  writeNotNull('keyword', instance.keyword);
  writeNotNull('price', instance.price);
  writeNotNull('fixedPrice', instance.fixedPrice);
  writeNotNull('minPrice', instance.minPrice);
  return val;
}
