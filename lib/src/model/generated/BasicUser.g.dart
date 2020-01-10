// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BasicUser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicUser _$BasicUserFromJson(Map<String, dynamic> json) {
  return BasicUser(
    context: json['context'] as int,
    user: json['user'] as String,
  );
}

Map<String, dynamic> _$BasicUserToJson(BasicUser instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('context', instance.context);
  writeNotNull('user', instance.user);
  return val;
}
