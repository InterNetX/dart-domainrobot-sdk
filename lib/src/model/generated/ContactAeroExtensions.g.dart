// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactAeroExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactAeroExtensions _$ContactAeroExtensionsFromJson(
    Map<String, dynamic> json) {
  return ContactAeroExtensions(
    ensAuthId: json['ensAuthId'] as String,
    ensKey: json['ensKey'] as String,
  );
}

Map<String, dynamic> _$ContactAeroExtensionsToJson(
    ContactAeroExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ensAuthId', instance.ensAuthId);
  writeNotNull('ensKey', instance.ensKey);
  return val;
}
