// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SubjectAlternativeName.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubjectAlternativeName _$SubjectAlternativeNameFromJson(
    Map<String, dynamic> json) {
  return SubjectAlternativeName(
    name: json['name'] as String,
    approverEmail: json['approverEmail'] as String,
    orderId: json['orderId'] as String,
  );
}

Map<String, dynamic> _$SubjectAlternativeNameToJson(
    SubjectAlternativeName instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('approverEmail', instance.approverEmail);
  writeNotNull('orderId', instance.orderId);
  return val;
}
