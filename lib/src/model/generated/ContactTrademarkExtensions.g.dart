// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactTrademarkExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactTrademarkExtensions _$ContactTrademarkExtensionsFromJson(
    Map<String, dynamic> json) {
  return ContactTrademarkExtensions(
    name: json['name'] as String,
    number: json['number'] as String,
    country: json['country'] as String,
    regdate: json['regdate'] == null
        ? null
        : DateTime.parse(json['regdate'] as String),
    appdate: json['appdate'] == null
        ? null
        : DateTime.parse(json['appdate'] as String),
    office: json['office'] as String,
  );
}

Map<String, dynamic> _$ContactTrademarkExtensionsToJson(
    ContactTrademarkExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('number', instance.number);
  writeNotNull('country', instance.country);
  writeNotNull('regdate', instance.regdate?.toIso8601String());
  writeNotNull('appdate', instance.appdate?.toIso8601String());
  writeNotNull('office', instance.office);
  return val;
}
