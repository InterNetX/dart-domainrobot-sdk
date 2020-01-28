// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TmchContact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TmchContact _$TmchContactFromJson(Map<String, dynamic> json) {
  return TmchContact(
    entitlement: _$enumDecodeNullable(
        _$TmchMarkHolderConstantsEnumMap, json['entitlement']),
    name: json['name'] as String,
    organization: json['organization'] as String,
    street: json['street'] as String,
    city: json['city'] as String,
    postalCode: json['postalCode'] as String,
    state: json['state'] as String,
    country: json['country'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    fax: json['fax'] as String,
  );
}

Map<String, dynamic> _$TmchContactToJson(TmchContact instance) =>
    <String, dynamic>{
      'entitlement': _$TmchMarkHolderConstantsEnumMap[instance.entitlement],
      'name': instance.name,
      'organization': instance.organization,
      'street': instance.street,
      'city': instance.city,
      'postalCode': instance.postalCode,
      'state': instance.state,
      'country': instance.country,
      'email': instance.email,
      'phone': instance.phone,
      'fax': instance.fax,
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

const _$TmchMarkHolderConstantsEnumMap = {
  TmchMarkHolderConstants.OWNER: 'OWNER',
  TmchMarkHolderConstants.LICENSEE: 'LICENSEE',
  TmchMarkHolderConstants.ASSIGNEE: 'ASSIGNEE',
};
