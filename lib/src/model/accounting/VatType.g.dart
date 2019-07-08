// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VatType.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VatType _$VatTypeFromJson(Map<String, dynamic> json) {
  return VatType(label: json['label'] as String);
}

Map<String, dynamic> _$VatTypeToJson(VatType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('label', instance.label);
  return val;
}
