// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewPassword.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewPassword _$NewPasswordFromJson(Map<String, dynamic> json) {
  return NewPassword(
    user: json['user'] as String,
    context: json['context'] as int,
    tan: json['tan'] as String,
    password: json['password'] as String,
    email: json['email'] as String,
    mobile: json['mobile'] as String,
    tanMethods: (json['tanMethods'] as List)?.map((e) => e as String)?.toList(),
    token: json['token'] as String,
    method: json['method'] as String,
  );
}

Map<String, dynamic> _$NewPasswordToJson(NewPassword instance) =>
    <String, dynamic>{
      'user': instance.user,
      'context': instance.context,
      'tan': instance.tan,
      'password': instance.password,
      'email': instance.email,
      'mobile': instance.mobile,
      'tanMethods': instance.tanMethods,
      'token': instance.token,
      'method': instance.method,
    };
