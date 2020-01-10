// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactBankExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactBankExtensions _$ContactBankExtensionsFromJson(
    Map<String, dynamic> json) {
  return ContactBankExtensions(
    ftldToken: json['ftldToken'] as String,
  );
}

Map<String, dynamic> _$ContactBankExtensionsToJson(
    ContactBankExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ftldToken', instance.ftldToken);
  return val;
}
