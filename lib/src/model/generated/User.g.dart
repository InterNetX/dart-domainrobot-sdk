// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    context: json['context'] as int,
    password: json['password'] as String,
    defaultEmail: json['defaultEmail'] as String,
    status: json['status'] as int,
    substatus: json['substatus'] as int,
    authType: _$enumDecodeNullable(_$AuthTypeEnumMap, json['authType']),
    details: json['details'] == null
        ? null
        : UserDetails.fromJson(json['details'] as Map<String, dynamic>),
    lock: _$enumDecodeNullable(_$UserLockEnumMap, json['lock']),
    acls: json['acls'] == null
        ? null
        : UserAcls.fromJson(json['acls'] as Map<String, dynamic>),
    profiles: json['profiles'] == null
        ? null
        : UserProfileViews.fromJson(json['profiles'] as Map<String, dynamic>),
    ancestors: (json['ancestors'] as List)
        ?.map((e) =>
            e == null ? null : BasicUser.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    customer: json['customer'] == null
        ? null
        : BasicCustomer.fromJson(json['customer'] as Map<String, dynamic>),
    nameServerGroups: (json['nameServerGroups'] as List)
        ?.map((e) => e == null
            ? null
            : VirtualNameServerGroup.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subscriptions: (json['subscriptions'] as List)
        ?.map((e) =>
            e == null ? null : Subscription.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    applications: (json['applications'] as List)
        ?.map((e) => e == null
            ? null
            : TrustedApplication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    restrictions: json['restrictions'] == null
        ? null
        : IpRestrictions.fromJson(json['restrictions'] as Map<String, dynamic>),
    user: json['user'] as String,
    language: json['language'] as String,
    parent: json['parent'] == null
        ? null
        : User.fromJson(json['parent'] as Map<String, dynamic>),
    directCustomer: json['directCustomer'] as bool,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'context': instance.context,
      'password': instance.password,
      'defaultEmail': instance.defaultEmail,
      'status': instance.status,
      'substatus': instance.substatus,
      'authType': _$AuthTypeEnumMap[instance.authType],
      'details': instance.details,
      'lock': _$UserLockEnumMap[instance.lock],
      'acls': instance.acls,
      'profiles': instance.profiles,
      'ancestors': instance.ancestors,
      'customer': instance.customer,
      'nameServerGroups': instance.nameServerGroups,
      'subscriptions': instance.subscriptions,
      'applications': instance.applications,
      'restrictions': instance.restrictions,
      'user': instance.user,
      'language': instance.language,
      'parent': instance.parent,
      'directCustomer': instance.directCustomer,
    };

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

const _$AuthTypeEnumMap = {
  AuthType.PASSWORD: 'PASSWORD',
  AuthType.PASSWORD_TOKEN: 'PASSWORD_TOKEN',
  AuthType.ALIAS: 'ALIAS',
};

const _$UserLockEnumMap = {
  UserLock.NONE: 'NONE',
  UserLock.CUSTOMER: 'CUSTOMER',
  UserLock.EXPIRED: 'EXPIRED',
  UserLock.USER: 'USER',
};
