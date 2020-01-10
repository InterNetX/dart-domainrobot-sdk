// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return Contact(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    id: json['id'] as int,
    owner: json['owner'] == null
        ? null
        : BasicUser.fromJson(json['owner'] as Map<String, dynamic>),
    updater: json['updater'] == null
        ? null
        : BasicUser.fromJson(json['updater'] as Map<String, dynamic>),
    alias: json['alias'] as String,
    type: _$enumDecodeNullable(_$ContactTypeConstantsEnumMap, json['type']),
    organization: json['organization'] as String,
    title: json['title'] as String,
    city: json['city'] as String,
    country: json['country'] as String,
    state: json['state'] as String,
    email: json['email'] as String,
    protection: _$enumDecodeNullable(
        _$ContactProtectionConstantsEnumMap, json['protection']),
    sip: json['sip'] as String,
    remarks: (json['remarks'] as List)?.map((e) => e as String)?.toList(),
    domainsafe: json['domainsafe'] as bool,
    confirmOwnerConsent: json['confirmOwnerConsent'] as bool,
    comment: json['comment'] as String,
    verification: _$enumDecodeNullable(
        _$GenericStatusConstantsEnumMap, json['verification']),
    fname: json['fname'] as String,
    lname: json['lname'] as String,
    address: (json['address'] as List)?.map((e) => e as String)?.toList(),
    pcode: json['pcode'] as String,
    phone: json['phone'] as String,
    fax: json['fax'] as String,
    nicRef: (json['nicRef'] as List)
        ?.map((e) => e == null
            ? null
            : ContactReference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    extensions: json['extensions'] == null
        ? null
        : ContactExtensions.fromJson(
            json['extensions'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ContactToJson(Contact instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('id', instance.id);
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('updater', instance.updater?.toJson());
  writeNotNull('alias', instance.alias);
  writeNotNull('type', _$ContactTypeConstantsEnumMap[instance.type]);
  writeNotNull('organization', instance.organization);
  writeNotNull('title', instance.title);
  writeNotNull('city', instance.city);
  writeNotNull('country', instance.country);
  writeNotNull('state', instance.state);
  writeNotNull('email', instance.email);
  writeNotNull(
      'protection', _$ContactProtectionConstantsEnumMap[instance.protection]);
  writeNotNull('sip', instance.sip);
  writeNotNull('remarks', instance.remarks);
  writeNotNull('domainsafe', instance.domainsafe);
  writeNotNull('confirmOwnerConsent', instance.confirmOwnerConsent);
  writeNotNull('comment', instance.comment);
  writeNotNull(
      'verification', _$GenericStatusConstantsEnumMap[instance.verification]);
  writeNotNull('fname', instance.fname);
  writeNotNull('lname', instance.lname);
  writeNotNull('address', instance.address);
  writeNotNull('pcode', instance.pcode);
  writeNotNull('phone', instance.phone);
  writeNotNull('fax', instance.fax);
  writeNotNull('nicRef', instance.nicRef?.map((e) => e?.toJson())?.toList());
  writeNotNull('extensions', instance.extensions?.toJson());
  return val;
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ContactTypeConstantsEnumMap = {
  ContactTypeConstants.PERSON: 'PERSON',
  ContactTypeConstants.ORG: 'ORG',
  ContactTypeConstants.ROLE: 'ROLE',
};

const _$ContactProtectionConstantsEnumMap = {
  ContactProtectionConstants.SHOW_ALL: 'SHOW_ALL',
  ContactProtectionConstants.SHOW_NONE: 'SHOW_NONE',
};

const _$GenericStatusConstantsEnumMap = {
  GenericStatusConstants.PENDING: 'PENDING',
  GenericStatusConstants.SUCCESS: 'SUCCESS',
  GenericStatusConstants.FAILED: 'FAILED',
  GenericStatusConstants.NOT_SET: 'NOT_SET',
};
