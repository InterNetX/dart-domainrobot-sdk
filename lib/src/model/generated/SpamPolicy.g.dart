// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SpamPolicy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpamPolicy _$SpamPolicyFromJson(Map<String, dynamic> json) {
  return SpamPolicy(
    modifySubject: json['modifySubject'] as bool,
    tagHeader: (json['tagHeader'] as num)?.toDouble(),
    spam: (json['spam'] as num)?.toDouble(),
    kill: (json['kill'] as num)?.toDouble(),
    quarantineDigestInterval: json['quarantineDigestInterval'] as int,
  );
}

Map<String, dynamic> _$SpamPolicyToJson(SpamPolicy instance) =>
    <String, dynamic>{
      'modifySubject': instance.modifySubject,
      'tagHeader': instance.tagHeader,
      'spam': instance.spam,
      'kill': instance.kill,
      'quarantineDigestInterval': instance.quarantineDigestInterval,
    };
