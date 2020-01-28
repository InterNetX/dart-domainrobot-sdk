// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactBirthExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactBirthExtensions _$ContactBirthExtensionsFromJson(
    Map<String, dynamic> json) {
  return ContactBirthExtensions(
    country: json['country'] as String,
    day: json['day'] == null ? null : DateTime.parse(json['day'] as String),
    postalCode: json['postalCode'] as String,
    place: json['place'] as String,
  );
}

Map<String, dynamic> _$ContactBirthExtensionsToJson(
        ContactBirthExtensions instance) =>
    <String, dynamic>{
      'country': instance.country,
      'day': instance.day?.toIso8601String(),
      'postalCode': instance.postalCode,
      'place': instance.place,
    };
