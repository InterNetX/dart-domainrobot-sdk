// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactIdentificationExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactIdentificationExtensions _$ContactIdentificationExtensionsFromJson(
    Map<String, dynamic> json) {
  return ContactIdentificationExtensions(
    number: json['number'] as String,
    authority: json['authority'] as String,
    dateOfIssue: json['dateOfIssue'] == null
        ? null
        : DateTime.parse(json['dateOfIssue'] as String),
    validTill: json['validTill'] == null
        ? null
        : DateTime.parse(json['validTill'] as String),
  );
}

Map<String, dynamic> _$ContactIdentificationExtensionsToJson(
    ContactIdentificationExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('number', instance.number);
  writeNotNull('authority', instance.authority);
  writeNotNull('dateOfIssue', instance.dateOfIssue?.toIso8601String());
  writeNotNull('validTill', instance.validTill?.toIso8601String());
  return val;
}
