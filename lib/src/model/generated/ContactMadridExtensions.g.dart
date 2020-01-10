// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactMadridExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactMadridExtensions _$ContactMadridExtensionsFromJson(
    Map<String, dynamic> json) {
  return ContactMadridExtensions(
    intendedUse: json['intendedUse'] as String,
  );
}

Map<String, dynamic> _$ContactMadridExtensionsToJson(
    ContactMadridExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('intendedUse', instance.intendedUse);
  return val;
}
