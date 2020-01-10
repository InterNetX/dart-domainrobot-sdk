// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddressClaim.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressClaim _$AddressClaimFromJson(Map<String, dynamic> json) {
  return AddressClaim(
    formatted: json['formatted'] as String,
    streetAddress: json['streetAddress'] as String,
    locality: json['locality'] as String,
    region: json['region'] as String,
    postalCode: json['postalCode'] as String,
    country: json['country'] as String,
  );
}

Map<String, dynamic> _$AddressClaimToJson(AddressClaim instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('formatted', instance.formatted);
  writeNotNull('streetAddress', instance.streetAddress);
  writeNotNull('locality', instance.locality);
  writeNotNull('region', instance.region);
  writeNotNull('postalCode', instance.postalCode);
  writeNotNull('country', instance.country);
  return val;
}
