// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactJobsExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactJobsExtensions _$ContactJobsExtensionsFromJson(
    Map<String, dynamic> json) {
  return ContactJobsExtensions(
    adminType: json['adminType'] as bool,
    contactTitle: json['contactTitle'] as String,
    hrMember: json['hrMember'] as bool,
    industryClass: json['industryClass'] as int,
    website: json['website'] as String,
  );
}

Map<String, dynamic> _$ContactJobsExtensionsToJson(
    ContactJobsExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('adminType', instance.adminType);
  writeNotNull('contactTitle', instance.contactTitle);
  writeNotNull('hrMember', instance.hrMember);
  writeNotNull('industryClass', instance.industryClass);
  writeNotNull('website', instance.website);
  return val;
}
