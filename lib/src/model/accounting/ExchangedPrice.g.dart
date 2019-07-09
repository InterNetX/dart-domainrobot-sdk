// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ExchangedPrice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangedPrice _$ExchangedPriceFromJson(Map<String, dynamic> json) {
  return ExchangedPrice(
      created: json['created'] as String,
      updated: json['updated'] as String,
      owner: json['owner'] == null
          ? null
          : User.fromJson(json['owner'] as Map<String, dynamic>),
      updater: json['updater'] == null
          ? null
          : User.fromJson(json['updater'] as Map<String, dynamic>),
      discountable: json['discountable'] as bool,
      currency: json['currency'] as String,
      type: json['type'] as String,
      comment: json['comment'] as String,
      amount: (json['amount'] as num)?.toDouble(),
      customer: json['customer'] == null
          ? null
          : GenericCustomer.fromJson(json['customer'] as Map<String, dynamic>),
      logId: json['logId'] as int,
      priceConditions: (json['priceConditions'] as List)
          ?.map((e) => e == null
              ? null
              : PriceServiceEntity.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      normalPrice: json['normalPrice'] == null
          ? null
          : ExchangedPrice.fromJson(
              json['normalPrice'] as Map<String, dynamic>),
      priority: json['priority'] as String,
      rate: (json['rate'] as num)?.toDouble(),
      refund: json['refund'] as int,
      valid: json['valid'] as String,
      vatRate: json['vatRate'] as String,
      period: json['period'] == null
          ? null
          : DomainRobotTimePeriod.fromJson(
              json['period'] as Map<String, dynamic>),
      vatAmount: (json['vatAmount'] as num)?.toDouble());
}

Map<String, dynamic> _$ExchangedPriceToJson(ExchangedPrice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created);
  writeNotNull('updated', instance.updated);
  writeNotNull('owner', instance.owner);
  writeNotNull('updater', instance.updater);
  writeNotNull('amount', instance.amount);
  writeNotNull('type', instance.type);
  writeNotNull('currency', instance.currency);
  writeNotNull('priority', instance.priority);
  writeNotNull('customer', instance.customer);
  writeNotNull('period', instance.period);
  writeNotNull('discountable', instance.discountable);
  writeNotNull('logId', instance.logId);
  writeNotNull('refund', instance.refund);
  writeNotNull('priceConditions', instance.priceConditions);
  writeNotNull('comment', instance.comment);
  writeNotNull('normalPrice', instance.normalPrice);
  writeNotNull('valid', instance.valid);
  writeNotNull('vatRate', instance.vatRate);
  writeNotNull('vatAmount', instance.vatAmount);
  writeNotNull('rate', instance.rate);
  return val;
}
