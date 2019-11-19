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
        : User.fromJson(json['updater'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ContactToJson(Contact instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', instance.type);
  writeNotNull('title', instance.title);
  writeNotNull('fname', instance.fname);
  writeNotNull('lname', instance.lname);
  writeNotNull('organization', instance.organization);
  writeNotNull('address', instance.address);
  writeNotNull('city', instance.city);
  writeNotNull('pcode', instance.pcode);
  writeNotNull('country', instance.country);
  writeNotNull('state', instance.state);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  writeNotNull('fax', instance.fax);
  writeNotNull('created', instance.created);
  writeNotNull('updated', instance.updated);
  writeNotNull('owner', instance.owner);
  writeNotNull('updater', instance.updater);
  return val;
}
