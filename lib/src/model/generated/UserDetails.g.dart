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

Map<String, dynamic> _$UserDetailsToJson(UserDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('organization', instance.organization);
  writeNotNull('passwordResetMobile', instance.passwordResetMobile);
  writeNotNull('passwordResetVerifyEmail', instance.passwordResetVerifyEmail);
  writeNotNull('passwordResetEmail', instance.passwordResetEmail);
  writeNotNull('fname', instance.fname);
  writeNotNull('lname', instance.lname);
  return val;
}
