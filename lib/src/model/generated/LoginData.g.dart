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

Map<String, dynamic> _$LoginDataToJson(LoginData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('context', instance.context);
  writeNotNull('password', instance.password);
  writeNotNull('token', instance.token);
  writeNotNull('user', instance.user);
  return val;
}
