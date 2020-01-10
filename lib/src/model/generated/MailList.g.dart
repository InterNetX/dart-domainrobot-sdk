// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MailList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MailList _$MailListFromJson(Map<String, dynamic> json) {
  return MailList(
    emails: (json['emails'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$MailListToJson(MailList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('emails', instance.emails);
  return val;
}
