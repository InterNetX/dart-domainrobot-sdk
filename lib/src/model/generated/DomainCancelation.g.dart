// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainCancelation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainCancelation _$DomainCancelationFromJson(Map<String, dynamic> json) {
  return DomainCancelation(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    owner: json['owner'] == null
        ? null
        : BasicUser.fromJson(json['owner'] as Map<String, dynamic>),
    updater: json['updater'] == null
        ? null
        : BasicUser.fromJson(json['updater'] as Map<String, dynamic>),
    domain: json['domain'] as String,
    registryWhen: json['registryWhen'] == null
        ? null
        : DateTime.parse(json['registryWhen'] as String),
    gainingRegistrar: json['gainingRegistrar'] as String,
    disconnect: json['disconnect'] as bool,
    notice: json['notice'] as String,
    logId: json['logId'] as int,
    registryStatus: _$enumDecodeNullable(
        _$RegistryStatusConstantsEnumMap, json['registryStatus']),
    type: _$enumDecodeNullable(_$CancelationTypeConstantsEnumMap, json['type']),
    execution: _$enumDecodeNullable(
        _$ExecutionTypeConstantsEnumMap, json['execution']),
  );
}

Map<String, dynamic> _$DomainCancelationToJson(DomainCancelation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('updater', instance.updater?.toJson());
  writeNotNull('domain', instance.domain);
  writeNotNull('registryWhen', instance.registryWhen?.toIso8601String());
  writeNotNull('gainingRegistrar', instance.gainingRegistrar);
  writeNotNull('disconnect', instance.disconnect);
  writeNotNull('notice', instance.notice);
  writeNotNull('logId', instance.logId);
  writeNotNull('registryStatus',
      _$RegistryStatusConstantsEnumMap[instance.registryStatus]);
  writeNotNull('type', _$CancelationTypeConstantsEnumMap[instance.type]);
  writeNotNull(
      'execution', _$ExecutionTypeConstantsEnumMap[instance.execution]);
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

const _$RegistryStatusConstantsEnumMap = {
  RegistryStatusConstants.ACTIVE: 'ACTIVE',
  RegistryStatusConstants.HOLD: 'HOLD',
  RegistryStatusConstants.LOCK: 'LOCK',
  RegistryStatusConstants.HOLD_LOCK: 'HOLD_LOCK',
  RegistryStatusConstants.AUTO: 'AUTO',
  RegistryStatusConstants.LOCK_OWNER: 'LOCK_OWNER',
  RegistryStatusConstants.LOCK_UPDATE: 'LOCK_UPDATE',
  RegistryStatusConstants.PENDING: 'PENDING',
  RegistryStatusConstants.NONE: 'NONE',
};

const _$CancelationTypeConstantsEnumMap = {
  CancelationTypeConstants.DELETE: 'DELETE',
  CancelationTypeConstants.TRANSIT: 'TRANSIT',
  CancelationTypeConstants.PREACK: 'PREACK',
};

const _$ExecutionTypeConstantsEnumMap = {
  ExecutionTypeConstants.DATE: 'DATE',
  ExecutionTypeConstants.EXPIRE: 'EXPIRE',
  ExecutionTypeConstants.NOW: 'NOW',
};
