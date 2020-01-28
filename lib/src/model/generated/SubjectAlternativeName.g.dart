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
        SubjectAlternativeName instance) =>
    <String, dynamic>{
      'name': instance.name,
      'approverEmail': instance.approverEmail,
      'orderId': instance.orderId,
    };
