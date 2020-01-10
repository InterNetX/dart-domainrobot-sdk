// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account(
    customer: json['customer'] == null
        ? null
        : GenericCustomer.fromJson(json['customer'] as Map<String, dynamic>),
    currentAccountBalance: (json['currentAccountBalance'] as num)?.toDouble(),
    runningTotal: (json['runningTotal'] as num)?.toDouble(),
    creditLimit: (json['creditLimit'] as num)?.toDouble(),
    currency: json['currency'] as String,
    minRunningTotalNotification:
        (json['minRunningTotalNotification'] as num)?.toDouble(),
    minRunningTotalNotificationEmail:
        json['minRunningTotalNotificationEmail'] as String,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    view: json['view'] == null
        ? null
        : CurrencyRate.fromJson(json['view'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AccountToJson(Account instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer', instance.customer?.toJson());
  writeNotNull('currentAccountBalance', instance.currentAccountBalance);
  writeNotNull('runningTotal', instance.runningTotal);
  writeNotNull('creditLimit', instance.creditLimit);
  writeNotNull('currency', instance.currency);
  writeNotNull(
      'minRunningTotalNotification', instance.minRunningTotalNotification);
  writeNotNull('minRunningTotalNotificationEmail',
      instance.minRunningTotalNotificationEmail);
  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('updated', instance.updated?.toIso8601String());
  writeNotNull('view', instance.view?.toJson());
  return val;
}
