// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PreregConfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreregConfig _$PreregConfigFromJson(Map<String, dynamic> json) {
  return PreregConfig(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    name: json['name'] as String,
    phase: json['phase'] as String,
    confirmationStart: json['confirmationStart'] == null
        ? null
        : DateTime.parse(json['confirmationStart'] as String),
    confirmationEnd: json['confirmationEnd'] == null
        ? null
        : DateTime.parse(json['confirmationEnd'] as String),
    periodStart: json['periodStart'] == null
        ? null
        : DateTime.parse(json['periodStart'] as String),
    periodEnd: json['periodEnd'] == null
        ? null
        : DateTime.parse(json['periodEnd'] as String),
    nicMemberLabel: json['nicMemberLabel'] as String,
    niccomStart: json['niccomStart'] == null
        ? null
        : DateTime.parse(json['niccomStart'] as String),
    niccomEnd: json['niccomEnd'] == null
        ? null
        : DateTime.parse(json['niccomEnd'] as String),
    autoupdateDns: json['autoupdateDns'] as bool,
    category: json['category'] as String,
    uiFields: json['uiFields'] as String,
    registrationType: _$enumDecodeNullable(
        _$RegistrationTypeConstantsEnumMap, json['registrationType']),
    messageType: _$enumDecodeNullable(
        _$MessageTypeConstantsEnumMap, json['messageType']),
    minPeriod: json['minPeriod'] == null
        ? null
        : TimePeriod.fromJson(json['minPeriod'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PreregConfigToJson(PreregConfig instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'name': instance.name,
      'phase': instance.phase,
      'confirmationStart': instance.confirmationStart?.toIso8601String(),
      'confirmationEnd': instance.confirmationEnd?.toIso8601String(),
      'periodStart': instance.periodStart?.toIso8601String(),
      'periodEnd': instance.periodEnd?.toIso8601String(),
      'nicMemberLabel': instance.nicMemberLabel,
      'niccomStart': instance.niccomStart?.toIso8601String(),
      'niccomEnd': instance.niccomEnd?.toIso8601String(),
      'autoupdateDns': instance.autoupdateDns,
      'category': instance.category,
      'uiFields': instance.uiFields,
      'registrationType':
          _$RegistrationTypeConstantsEnumMap[instance.registrationType],
      'messageType': _$MessageTypeConstantsEnumMap[instance.messageType],
      'minPeriod': instance.minPeriod,
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

const _$RegistrationTypeConstantsEnumMap = {
  RegistrationTypeConstants.FCFS: 'FCFS',
  RegistrationTypeConstants.APPLICATION: 'APPLICATION',
  RegistrationTypeConstants.OTHER: 'OTHER',
};

const _$MessageTypeConstantsEnumMap = {
  MessageTypeConstants.INITIAL: 'INITIAL',
  MessageTypeConstants.FIRST_REMINDER: 'FIRST_REMINDER',
  MessageTypeConstants.SECOND_REMINDER: 'SECOND_REMINDER',
  MessageTypeConstants.LAST_REMINDER: 'LAST_REMINDER',
};
