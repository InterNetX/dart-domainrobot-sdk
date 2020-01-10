// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactXxxExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactXxxExtensions _$ContactXxxExtensionsFromJson(Map<String, dynamic> json) {
  return ContactXxxExtensions(
    membershipID: json['membershipID'] as String,
    nonResolverDomain: json['nonResolverDomain'] as bool,
  );
}

Map<String, dynamic> _$ContactXxxExtensionsToJson(
    ContactXxxExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('membershipID', instance.membershipID);
  writeNotNull('nonResolverDomain', instance.nonResolverDomain);
  return val;
}
