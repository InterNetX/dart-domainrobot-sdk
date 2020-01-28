// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TmchMarkComment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TmchMarkComment _$TmchMarkCommentFromJson(Map<String, dynamic> json) {
  return TmchMarkComment(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    status:
        _$enumDecodeNullable(_$TmchMarkStatusConstantsEnumMap, json['status']),
    comment: json['comment'] as String,
    user: json['user'] == null
        ? null
        : BasicUser.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TmchMarkCommentToJson(TmchMarkComment instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'status': _$TmchMarkStatusConstantsEnumMap[instance.status],
      'comment': instance.comment,
      'user': instance.user,
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
