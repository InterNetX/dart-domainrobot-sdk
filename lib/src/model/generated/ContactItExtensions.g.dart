// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactItExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactItExtensions _$ContactItExtensionsFromJson(Map<String, dynamic> json) {
  return ContactItExtensions(
    entityType: json['entityType'] as int,
  );
}

Map<String, dynamic> _$ContactItExtensionsToJson(ContactItExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entityType', instance.entityType);
  return val;
}
