// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainExtensions _$DomainExtensionsFromJson(Map<String, dynamic> json) {
  return DomainExtensions(
    parkingExtensions: json['parkingExtensions'] == null
        ? null
        : DomainParkingExtensions.fromJson(
            json['parkingExtensions'] as Map<String, dynamic>),
    tmchClaimsNoticeExtensions: json['tmchClaimsNoticeExtensions'] == null
        ? null
        : DomainTmchClaimNoticeExtensions.fromJson(
            json['tmchClaimsNoticeExtensions'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DomainExtensionsToJson(DomainExtensions instance) =>
    <String, dynamic>{
      'parkingExtensions': instance.parkingExtensions,
      'tmchClaimsNoticeExtensions': instance.tmchClaimsNoticeExtensions,
    };
