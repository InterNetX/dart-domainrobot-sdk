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
    ContactBirthExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('country', instance.country);
  writeNotNull('day', instance.day?.toIso8601String());
  writeNotNull('postalCode', instance.postalCode);
  writeNotNull('place', instance.place);
  return val;
}
