// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) {
  return UserDetails(
    organization: json['organization'] as String,
    passwordResetMobile: json['passwordResetMobile'] as String,
    passwordResetVerifyEmail: json['passwordResetVerifyEmail'] as String,
    passwordResetEmail: json['passwordResetEmail'] as String,
    fname: json['fname'] as String,
    lname: json['lname'] as String,
  );
}

Map<String, dynamic> _$UserDetailsToJson(UserDetails instance) =>
    <String, dynamic>{
      'organization': instance.organization,
      'passwordResetMobile': instance.passwordResetMobile,
      'passwordResetVerifyEmail': instance.passwordResetVerifyEmail,
      'passwordResetEmail': instance.passwordResetEmail,
      'fname': instance.fname,
      'lname': instance.lname,
    };
