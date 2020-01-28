// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return Subscription(
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
    status: _$enumDecodeNullable(_$BillingStatusEnumMap, json['status']),
    object: json['object'] as String,
    description: json['description'] as String,
    period: json['period'] == null
        ? null
        : TimePeriod.fromJson(json['period'] as Map<String, dynamic>),
    articleTypeLabel: json['articleTypeLabel'] as String,
    articleLabel: json['articleLabel'] as String,
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : PeriodicBilling.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    limits: (json['limits'] as List)
        ?.map((e) => e == null
            ? null
            : BillingObjectLimit.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    acls: (json['acls'] as List)
        ?.map((e) =>
            e == null ? null : UserAcl.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    variant: json['variant'] as String,
    businessCase: json['businessCase'] as String,
  );
}

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'status': _$BillingStatusEnumMap[instance.status],
      'object': instance.object,
      'description': instance.description,
      'period': instance.period,
      'articleTypeLabel': instance.articleTypeLabel,
      'articleLabel': instance.articleLabel,
      'item': instance.item,
      'limits': instance.limits,
      'acls': instance.acls,
      'variant': instance.variant,
      'businessCase': instance.businessCase,
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

const _$BillingStatusEnumMap = {
  BillingStatus.ADD: 'ADD',
  BillingStatus.REMOVE: 'REMOVE',
  BillingStatus.UPDATE: 'UPDATE',
  BillingStatus.IGNORE: 'IGNORE',
  BillingStatus.CUSTOMER_CHANGED: 'CUSTOMER_CHANGED',
  BillingStatus.USER_CHANGED: 'USER_CHANGED',
  BillingStatus.ACTIVE: 'ACTIVE',
  BillingStatus.CANCELED: 'CANCELED',
  BillingStatus.CANCELED_EXPIRE: 'CANCELED_EXPIRE',
  BillingStatus.RESTORE: 'RESTORE',
  BillingStatus.AUTODELETE: 'AUTODELETE',
  BillingStatus.REMOVED: 'REMOVED',
};
