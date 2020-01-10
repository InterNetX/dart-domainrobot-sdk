// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserProfileViews.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileViews _$UserProfileViewsFromJson(Map<String, dynamic> json) {
  return UserProfileViews(
    profiles: (json['profiles'] as List)
        ?.map((e) =>
            e == null ? null : UserProfile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$UserProfileViewsToJson(UserProfileViews instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'profiles', instance.profiles?.map((e) => e?.toJson())?.toList());
  return val;
}
