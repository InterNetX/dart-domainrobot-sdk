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
        ContactJobsExtensions instance) =>
    <String, dynamic>{
      'adminType': instance.adminType,
      'contactTitle': instance.contactTitle,
      'hrMember': instance.hrMember,
      'industryClass': instance.industryClass,
      'website': instance.website,
    };
