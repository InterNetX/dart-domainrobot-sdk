// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transfer _$TransferFromJson(Map<String, dynamic> json) {
  return Transfer(
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
    gainingRegistrar: json['gainingRegistrar'] as String,
    loosingRegistrar: json['loosingRegistrar'] as String,
    start:
        json['start'] == null ? null : DateTime.parse(json['start'] as String),
    reminder: json['reminder'] == null
        ? null
        : DateTime.parse(json['reminder'] as String),
    autoAck: json['autoAck'] == null
        ? null
        : DateTime.parse(json['autoAck'] as String),
    autoNack: json['autoNack'] == null
        ? null
        : DateTime.parse(json['autoNack'] as String),
    end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    autoAnswer: json['autoAnswer'] as bool,
    recipient: json['recipient'] as String,
    mailserver: json['mailserver'] as String,
    deliveredMailserver: json['deliveredMailserver'] as String,
    delivered: json['delivered'] == null
        ? null
        : DateTime.parse(json['delivered'] as String),
    status:
        _$enumDecodeNullable(_$TransferStatusConstantsEnumMap, json['status']),
  );
}

Map<String, dynamic> _$TransferToJson(Transfer instance) {
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
  writeNotNull('gainingRegistrar', instance.gainingRegistrar);
  writeNotNull('loosingRegistrar', instance.loosingRegistrar);
  writeNotNull('start', instance.start?.toIso8601String());
  writeNotNull('reminder', instance.reminder?.toIso8601String());
  writeNotNull('autoAck', instance.autoAck?.toIso8601String());
  writeNotNull('autoNack', instance.autoNack?.toIso8601String());
  writeNotNull('end', instance.end?.toIso8601String());
  writeNotNull('autoAnswer', instance.autoAnswer);
  writeNotNull('recipient', instance.recipient);
  writeNotNull('mailserver', instance.mailserver);
  writeNotNull('deliveredMailserver', instance.deliveredMailserver);
  writeNotNull('delivered', instance.delivered?.toIso8601String());
  writeNotNull('status', _$TransferStatusConstantsEnumMap[instance.status]);
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

const _$TransferStatusConstantsEnumMap = {
  TransferStatusConstants.NOT_SET: 'NOT_SET',
  TransferStatusConstants.START: 'START',
  TransferStatusConstants.FAILED: 'FAILED',
  TransferStatusConstants.NACK: 'NACK',
  TransferStatusConstants.ACK: 'ACK',
  TransferStatusConstants.FOA1_SENT: 'FOA1_SENT',
  TransferStatusConstants.AUTOUPDATE_SUCCESS: 'AUTOUPDATE_SUCCESS',
  TransferStatusConstants.AUTOUPDATE_FAILED: 'AUTOUPDATE_FAILED',
};
