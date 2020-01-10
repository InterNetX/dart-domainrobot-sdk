// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Claims.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Claims _$ClaimsFromJson(Map<String, dynamic> json) {
  return Claims(
    name: json['name'] as String,
    givenName: json['givenName'] as String,
    familyName: json['familyName'] as String,
    middleName: json['middleName'] as String,
    nickname: json['nickname'] as String,
    preferredUsername: json['preferredUsername'] as String,
    profile: json['profile'] == null
        ? null
        : UrlEntity.fromJson(json['profile'] as Map<String, dynamic>),
    picture: json['picture'] == null
        ? null
        : UrlEntity.fromJson(json['picture'] as Map<String, dynamic>),
    website: json['website'] == null
        ? null
        : UrlEntity.fromJson(json['website'] as Map<String, dynamic>),
    email: json['email'] as String,
    emailVerified: json['emailVerified'] as bool,
    gender: _$enumDecodeNullable(_$GenderConstantsEnumMap, json['gender']),
    birthdate: json['birthdate'] == null
        ? null
        : DateTime.parse(json['birthdate'] as String),
    zoneinfo: json['zoneinfo'] as String,
    locale: json['locale'] as String,
    phoneNumber: json['phoneNumber'] == null
        ? null
        : Phone.fromJson(json['phoneNumber'] as Map<String, dynamic>),
    phoneNumberVerified: json['phoneNumberVerified'] as bool,
    address: json['address'] == null
        ? null
        : AddressClaim.fromJson(json['address'] as Map<String, dynamic>),
    organization: json['organization'] as String,
  );
}

Map<String, dynamic> _$ClaimsToJson(Claims instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('givenName', instance.givenName);
  writeNotNull('familyName', instance.familyName);
  writeNotNull('middleName', instance.middleName);
  writeNotNull('nickname', instance.nickname);
  writeNotNull('preferredUsername', instance.preferredUsername);
  writeNotNull('profile', instance.profile?.toJson());
  writeNotNull('picture', instance.picture?.toJson());
  writeNotNull('website', instance.website?.toJson());
  writeNotNull('email', instance.email);
  writeNotNull('emailVerified', instance.emailVerified);
  writeNotNull('gender', _$GenderConstantsEnumMap[instance.gender]);
  writeNotNull('birthdate', instance.birthdate?.toIso8601String());
  writeNotNull('zoneinfo', instance.zoneinfo);
  writeNotNull('locale', instance.locale);
  writeNotNull('phoneNumber', instance.phoneNumber?.toJson());
  writeNotNull('phoneNumberVerified', instance.phoneNumberVerified);
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('organization', instance.organization);
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

const _$GenderConstantsEnumMap = {
  GenderConstants.MALE: 'MALE',
  GenderConstants.FEMALE: 'FEMALE',
};
