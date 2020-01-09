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

Map<String, dynamic> _$UserProfileViewsToJson(UserProfileViews instance) =>
    <String, dynamic>{
      'profiles': instance.profiles,
    };
