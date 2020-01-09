// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SslContact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SslContact _$SslContactFromJson(Map<String, dynamic> json) {
  return SslContact(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    fname: json['fname'] as String,
    lname: json['lname'] as String,
    phone: json['phone'] as String,
    fax: json['fax'] as String,
    email: json['email'] as String,
    title: json['title'] as String,
    organization: json['organization'] as String,
    address: (json['address'] as List)?.map((e) => e as String)?.toList(),
    pcode: json['pcode'] as String,
    city: json['city'] as String,
    country: json['country'] as String,
    state: json['state'] as String,
    owner: json['owner'] == null
        ? null
        : BasicUser.fromJson(json['owner'] as Map<String, dynamic>),
    updater: json['updater'] == null
        ? null
        : BasicUser.fromJson(json['updater'] as Map<String, dynamic>),
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$SslContactToJson(SslContact instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'fname': instance.fname,
      'lname': instance.lname,
      'phone': instance.phone,
      'fax': instance.fax,
      'email': instance.email,
      'title': instance.title,
      'organization': instance.organization,
      'address': instance.address,
      'pcode': instance.pcode,
      'city': instance.city,
      'country': instance.country,
      'state': instance.state,
      'owner': instance.owner,
      'updater': instance.updater,
      'id': instance.id,
    };
