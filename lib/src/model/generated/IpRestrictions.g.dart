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

Map<String, dynamic> _$IpRestrictionsToJson(IpRestrictions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('acls', instance.acls?.map((e) => e?.toJson())?.toList());
  return val;
}
