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

Map<String, dynamic> _$BasicUserToJson(BasicUser instance) => <String, dynamic>{
      'context': instance.context,
      'user': instance.user,
    };
