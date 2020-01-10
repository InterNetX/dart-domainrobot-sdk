// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserAcls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAcls _$UserAclsFromJson(Map<String, dynamic> json) {
  return UserAcls(
    user: json['user'] == null
        ? null
        : BasicUser.fromJson(json['user'] as Map<String, dynamic>),
    acls: (json['acls'] as List)
        ?.map((e) =>
            e == null ? null : UserAcl.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$UserAclsToJson(UserAcls instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user', instance.user?.toJson());
  writeNotNull('acls', instance.acls?.map((e) => e?.toJson())?.toList());
  return val;
}
