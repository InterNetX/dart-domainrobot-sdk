// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'IpRestrictions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IpRestrictions _$IpRestrictionsFromJson(Map<String, dynamic> json) {
  return IpRestrictions(
    acls: (json['acls'] as List)
        ?.map((e) => e == null
            ? null
            : IpRestriction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$IpRestrictionsToJson(IpRestrictions instance) =>
    <String, dynamic>{
      'acls': instance.acls,
    };
