// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactSportExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactSportExtensions _$ContactSportExtensionsFromJson(
    Map<String, dynamic> json) {
  return ContactSportExtensions(
    intendedUse: json['intendedUse'] as String,
  );
}

Map<String, dynamic> _$ContactSportExtensionsToJson(
    ContactSportExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('intendedUse', instance.intendedUse);
  return val;
}
