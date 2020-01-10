// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactBarcelonaExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactBarcelonaExtensions _$ContactBarcelonaExtensionsFromJson(
    Map<String, dynamic> json) {
  return ContactBarcelonaExtensions(
    intededUse: json['intededUse'] as String,
  );
}

Map<String, dynamic> _$ContactBarcelonaExtensionsToJson(
    ContactBarcelonaExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('intededUse', instance.intededUse);
  return val;
}
