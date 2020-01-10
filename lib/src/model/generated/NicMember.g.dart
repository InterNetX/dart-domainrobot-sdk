// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NicMember.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NicMember _$NicMemberFromJson(Map<String, dynamic> json) {
  return NicMember(
    label: json['label'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$NicMemberToJson(NicMember instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('label', instance.label);
  writeNotNull('name', instance.name);
  return val;
}
