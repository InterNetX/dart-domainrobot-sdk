// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainRobotApiResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainRobotApiResponse _$DomainRobotApiResponseFromJson(
    Map<String, dynamic> json) {
  return DomainRobotApiResponse(
    json['stid'] as String,
    json['ctid'] as String,
    (json['messages'] as List)
        ?.map((e) => e == null
            ? null
            : DomainRobotMessage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['status'] == null
        ? null
        : ResponseStatus.fromJson(json['status'] as Map<String, dynamic>),
    json['object'] == null
        ? null
        : ResponseObject.fromJson(json['object'] as Map<String, dynamic>),
    json['data'] as List,
  );
}

Map<String, dynamic> _$DomainRobotApiResponseToJson(
        DomainRobotApiResponse instance) =>
    <String, dynamic>{
      'stid': instance.stid,
      'ctid': instance.ctid,
      'messages': instance.messages,
      'status': instance.status,
      'object': instance.object,
      'data': instance.data,
    };
