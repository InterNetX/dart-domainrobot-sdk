// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactCatExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactCatExtensions _$ContactCatExtensionsFromJson(Map<String, dynamic> json) {
  return ContactCatExtensions(
    intendedUse: json['intendedUse'] as String,
  );
}

Map<String, dynamic> _$ContactCatExtensionsToJson(
    ContactCatExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('intendedUse', instance.intendedUse);
  return val;
}
