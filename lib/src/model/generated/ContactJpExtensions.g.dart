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

Map<String, dynamic> _$ContactJpExtensionsToJson(
        ContactJpExtensions instance) =>
    <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'organization': instance.organization,
      'adressLine1': instance.adressLine1,
      'adressLine2': instance.adressLine2,
      'adressLine3': instance.adressLine3,
    };
