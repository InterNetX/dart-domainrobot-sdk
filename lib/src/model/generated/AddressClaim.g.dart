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

Map<String, dynamic> _$AddressClaimToJson(AddressClaim instance) =>
    <String, dynamic>{
      'formatted': instance.formatted,
      'streetAddress': instance.streetAddress,
      'locality': instance.locality,
      'region': instance.region,
      'postalCode': instance.postalCode,
      'country': instance.country,
    };
