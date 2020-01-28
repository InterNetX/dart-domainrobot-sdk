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

Map<String, dynamic> _$ClaimsToJson(Claims instance) => <String, dynamic>{
      'name': instance.name,
      'givenName': instance.givenName,
      'familyName': instance.familyName,
      'middleName': instance.middleName,
      'nickname': instance.nickname,
      'preferredUsername': instance.preferredUsername,
      'profile': instance.profile,
      'picture': instance.picture,
      'website': instance.website,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'gender': _$GenderConstantsEnumMap[instance.gender],
      'birthdate': instance.birthdate?.toIso8601String(),
      'zoneinfo': instance.zoneinfo,
      'locale': instance.locale,
      'phoneNumber': instance.phoneNumber,
      'phoneNumberVerified': instance.phoneNumberVerified,
      'address': instance.address,
      'organization': instance.organization,
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

const _$GenderConstantsEnumMap = {
  GenderConstants.MALE: 'MALE',
  GenderConstants.FEMALE: 'FEMALE',
};
