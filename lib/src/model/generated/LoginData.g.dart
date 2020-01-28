// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginData _$LoginDataFromJson(Map<String, dynamic> json) {
  return LoginData(
    context: json['context'] as int,
    password: json['password'] as String,
    token: json['token'] as String,
    user: json['user'] as String,
  );
}

Map<String, dynamic> _$LoginDataToJson(LoginData instance) => <String, dynamic>{
      'context': instance.context,
      'password': instance.password,
      'token': instance.token,
      'user': instance.user,
    };
