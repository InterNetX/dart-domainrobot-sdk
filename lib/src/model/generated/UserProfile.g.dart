// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserProfile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return UserProfile(
    flag: _$enumDecodeNullable(_$UserProfileFlagEnumMap, json['flag']),
    key: json['key'] as String,
    value: json['value'] as String,
    readonly: json['readonly'] as bool,
  );
}

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'flag': _$UserProfileFlagEnumMap[instance.flag],
      'key': instance.key,
      'value': instance.value,
      'readonly': instance.readonly,
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

const _$UserProfileFlagEnumMap = {
  UserProfileFlag.OPTIONAL: 'OPTIONAL',
  UserProfileFlag.FIX: 'FIX',
  UserProfileFlag.RECURSE: 'RECURSE',
  UserProfileFlag.HIDDEN: 'HIDDEN',
  UserProfileFlag.PARENT_FIX: 'PARENT_FIX',
};
