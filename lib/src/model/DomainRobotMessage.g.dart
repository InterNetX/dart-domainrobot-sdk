// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainRobotMessage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainRobotMessage _$DomainRobotMessageFromJson(Map<String, dynamic> json) {
  return DomainRobotMessage(
    json['text'] as String,
    json['type'] as String,
    json['code'] as String,
  );
}

Map<String, dynamic> _$DomainRobotMessageToJson(DomainRobotMessage instance) =>
    <String, dynamic>{
      'text': instance.text,
      'code': instance.code,
      'type': instance.type,
    };
