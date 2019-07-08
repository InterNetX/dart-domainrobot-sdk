// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'IpRestriction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IpRestriction _$IpRestrictionFromJson(Map<String, dynamic> json) {
  return IpRestriction(
      address: json['address'] as String,
      type: json['type'] as String,
      created: json['created'] as String,
      updated: json['updated'] as String);
}

Map<String, dynamic> _$IpRestrictionToJson(IpRestriction instance) =>
    <String, dynamic>{
      'address': instance.address,
      'type': instance.type,
      'created': instance.created,
      'updated': instance.updated
    };
