// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactNzExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactNzExtensions _$ContactNzExtensionsFromJson(Map<String, dynamic> json) {
  return ContactNzExtensions(
    irpo: json['irpo'] as bool,
  );
}

Map<String, dynamic> _$ContactNzExtensionsToJson(ContactNzExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('irpo', instance.irpo);
  return val;
}
