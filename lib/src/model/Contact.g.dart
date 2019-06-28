// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return Contact(
      id: json['id'] as int,
      type: json['type'] as String,
      title: json['title'] as String,
      fname: json['fname'] as String,
      lname: json['lname'] as String,
      organization: json['organization'] as String,
      address: (json['address'] as List)?.map((e) => e as String)?.toList(),
      city: json['city'] as String,
      pcode: json['pcode'] as String,
      country: json['country'] as String,
      state: json['state'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      fax: json['fax'] as String,
      created: json['created'] as String,
      updated: json['updated'] as String,
      owner: json['owner'] == null
          ? null
          : User.fromJson(json['owner'] as Map<String, dynamic>),
      updater: json['updater'] == null
          ? null
          : User.fromJson(json['updater'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'fname': instance.fname,
      'lname': instance.lname,
      'organization': instance.organization,
      'address': instance.address,
      'city': instance.city,
      'pcode': instance.pcode,
      'country': instance.country,
      'state': instance.state,
      'email': instance.email,
      'phone': instance.phone,
      'fax': instance.fax,
      'created': instance.created,
      'updated': instance.updated,
      'owner': instance.owner,
      'updater': instance.updater
    };
