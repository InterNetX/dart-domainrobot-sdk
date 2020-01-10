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

Map<String, dynamic> _$SpamPolicyToJson(SpamPolicy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('modifySubject', instance.modifySubject);
  writeNotNull('tagHeader', instance.tagHeader);
  writeNotNull('spam', instance.spam);
  writeNotNull('kill', instance.kill);
  writeNotNull('quarantineDigestInterval', instance.quarantineDigestInterval);
  return val;
}
