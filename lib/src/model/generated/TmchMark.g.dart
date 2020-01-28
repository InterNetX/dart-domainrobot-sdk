// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TmchMark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TmchMark _$TmchMarkFromJson(Map<String, dynamic> json) {
  return TmchMark(
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
    id: json['id'] as int,
    type: _$enumDecodeNullable(_$TmchMarkTypeConstantsEnumMap, json['type']),
    name: json['name'] as String,
    reference: json['reference'] as String,
    holder: json['holder'] == null
        ? null
        : TmchContact.fromJson(json['holder'] as Map<String, dynamic>),
    description: json['description'] as String,
    period: json['period'] == null
        ? null
        : TimePeriod.fromJson(json['period'] as Map<String, dynamic>),
    documents: (json['documents'] as List)
        ?.map((e) => e == null
            ? null
            : TmchMarkDocument.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    labels: (json['labels'] as List)?.map((e) => e as String)?.toList(),
    comments: (json['comments'] as List)
        ?.map((e) => e == null
            ? null
            : TmchMarkComment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    renew: _$enumDecodeNullable(_$RenewStatusConstantsEnumMap, json['renew']),
    status:
        _$enumDecodeNullable(_$TmchMarkStatusConstantsEnumMap, json['status']),
    payable: json['payable'] == null
        ? null
        : DateTime.parse(json['payable'] as String),
    internalComment: json['internalComment'] as String,
    sent: json['sent'] as bool,
    smdInclusion: json['smdInclusion'] as bool,
    claimsNotify: json['claimsNotify'] as bool,
    smdFile: json['smdFile'] as String,
    orderComplete: json['orderComplete'] as bool,
    claimsNotifyExtended: json['claimsNotifyExtended'] as bool,
    extension: json['extension'] == null
        ? null
        : TmchMarkAddon.fromJson(json['extension'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TmchMarkToJson(TmchMark instance) => <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'id': instance.id,
      'type': _$TmchMarkTypeConstantsEnumMap[instance.type],
      'name': instance.name,
      'reference': instance.reference,
      'holder': instance.holder,
      'description': instance.description,
      'period': instance.period,
      'documents': instance.documents,
      'labels': instance.labels,
      'comments': instance.comments,
      'renew': _$RenewStatusConstantsEnumMap[instance.renew],
      'status': _$TmchMarkStatusConstantsEnumMap[instance.status],
      'payable': instance.payable?.toIso8601String(),
      'internalComment': instance.internalComment,
      'sent': instance.sent,
      'smdInclusion': instance.smdInclusion,
      'claimsNotify': instance.claimsNotify,
      'smdFile': instance.smdFile,
      'orderComplete': instance.orderComplete,
      'claimsNotifyExtended': instance.claimsNotifyExtended,
      'extension': instance.extension,
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

const _$TmchMarkTypeConstantsEnumMap = {
  TmchMarkTypeConstants.TRADEMARK: 'TRADEMARK',
  TmchMarkTypeConstants.TREATY_OR_STATUTE: 'TREATY_OR_STATUTE',
  TmchMarkTypeConstants.COURT: 'COURT',
  TmchMarkTypeConstants.DNL_ABUSED: 'DNL_ABUSED',
};

const _$RenewStatusConstantsEnumMap = {
  RenewStatusConstants.AUTO: 'AUTO',
  RenewStatusConstants.CANCELED: 'CANCELED',
  RenewStatusConstants.ONCE: 'ONCE',
};

const _$TmchMarkStatusConstantsEnumMap = {
  TmchMarkStatusConstants.OPEN: 'OPEN',
  TmchMarkStatusConstants.PAYMENT: 'PAYMENT',
  TmchMarkStatusConstants.PENDING: 'PENDING',
  TmchMarkStatusConstants.INCORRECT: 'INCORRECT',
  TmchMarkStatusConstants.VERIFIED: 'VERIFIED',
  TmchMarkStatusConstants.SENT: 'SENT',
  TmchMarkStatusConstants.ACTIVE: 'ACTIVE',
  TmchMarkStatusConstants.DEACTIVATED: 'DEACTIVATED',
  TmchMarkStatusConstants.CANCELED: 'CANCELED',
  TmchMarkStatusConstants.RENEW: 'RENEW',
  TmchMarkStatusConstants.FAILED: 'FAILED',
  TmchMarkStatusConstants.EXTERNAL: 'EXTERNAL',
  TmchMarkStatusConstants.PENDING_TRANSFER: 'PENDING_TRANSFER',
  TmchMarkStatusConstants.PENDING_RENEW: 'PENDING_RENEW',
  TmchMarkStatusConstants.PENDING_DELETE: 'PENDING_DELETE',
  TmchMarkStatusConstants.PENDING_PAYMENT: 'PENDING_PAYMENT',
  TmchMarkStatusConstants.PENDING_TRANSFER_PAYMENT: 'PENDING_TRANSFER_PAYMENT',
  TmchMarkStatusConstants.PENDING_RENEW_PAYMENT: 'PENDING_RENEW_PAYMENT',
};
