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

Map<String, dynamic> _$DomainExtensionsToJson(DomainExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('parkingExtensions', instance.parkingExtensions?.toJson());
  writeNotNull('tmchClaimsNoticeExtensions',
      instance.tmchClaimsNoticeExtensions?.toJson());
  return val;
}
