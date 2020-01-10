// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactJpExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactJpExtensions _$ContactJpExtensionsFromJson(Map<String, dynamic> json) {
  return ContactJpExtensions(
    first: json['first'] as String,
    last: json['last'] as String,
    organization: json['organization'] as String,
    adressLine1: json['adressLine1'] as String,
    adressLine2: json['adressLine2'] as String,
    adressLine3: json['adressLine3'] as String,
  );
}

Map<String, dynamic> _$ContactJpExtensionsToJson(ContactJpExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first', instance.first);
  writeNotNull('last', instance.last);
  writeNotNull('organization', instance.organization);
  writeNotNull('adressLine1', instance.adressLine1);
  writeNotNull('adressLine2', instance.adressLine2);
  writeNotNull('adressLine3', instance.adressLine3);
  return val;
}
