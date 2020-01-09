// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PollMessage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PollMessage _$PollMessageFromJson(Map<String, dynamic> json) {
  return PollMessage(
    id: json['id'] as int,
    owner: json['owner'] == null
        ? null
        : BasicUser.fromJson(json['owner'] as Map<String, dynamic>),
    job: json['job'] == null
        ? null
        : WorkflowSpool.fromJson(json['job'] as Map<String, dynamic>),
    notify: json['notify'] == null
        ? null
        : NotifyMessage.fromJson(json['notify'] as Map<String, dynamic>),
    stid: json['stid'] as String,
    ctid: json['ctid'] as String,
    messages: (json['messages'] as List)
        ?.map((e) =>
            e == null ? null : Message.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    flags: json['flags'] as String,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    object: json['object'] == null
        ? null
        : ResponseObject.fromJson(json['object'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PollMessageToJson(PollMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'job': instance.job,
      'notify': instance.notify,
      'stid': instance.stid,
      'ctid': instance.ctid,
      'messages': instance.messages,
      'flags': instance.flags,
      'created': instance.created?.toIso8601String(),
      'object': instance.object,
    };
