// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactSwissExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactSwissExtensions _$ContactSwissExtensionsFromJson(
    Map<String, dynamic> json) {
  return ContactSwissExtensions(
    enterpriseId: json['enterpriseId'] as String,
    intededUse: json['intededUse'] as String,
  );
}

Map<String, dynamic> _$ContactSwissExtensionsToJson(
    ContactSwissExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enterpriseId', instance.enterpriseId);
  writeNotNull('intededUse', instance.intededUse);
  return val;
}
