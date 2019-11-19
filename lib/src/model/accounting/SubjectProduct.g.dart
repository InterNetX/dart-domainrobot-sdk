// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SubjectProduct.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubjectProduct _$SubjectProductFromJson(Map<String, dynamic> json) {
  return SubjectProduct(
    created: json['created'] as String,
    updated: json['updated'] as String,
    owner: json['owner'] == null
        ? null
        : User.fromJson(json['owner'] as Map<String, dynamic>),
    updater: json['updater'] == null
        ? null
        : User.fromJson(json['updater'] as Map<String, dynamic>),
    id: json['id'] as int,
    currency: json['currency'] as String,
    type: json['type'] as String,
    comment: json['comment'] as String,
    amount: (json['amount'] as num)?.toDouble(),
    customer: json['customer'] == null
        ? null
        : GenericCustomer.fromJson(json['customer'] as Map<String, dynamic>),
    view: json['view'] == null
        ? null
        : CurrencyRate.fromJson(json['view'] as Map<String, dynamic>),
    externalAccountingStatus: json['externalAccountingStatus'] as String,
    billing: json['billing'] == null
        ? null
        : User.fromJson(json['billing'] as Map<String, dynamic>),
    count: (json['count'] as num)?.toDouble(),
    number: json['number'] as String,
    effectiveCount: (json['effectiveCount'] as num)?.toDouble(),
    netAmount: (json['netAmount'] as num)?.toDouble(),
    payable: json['payable'] as String,
    period: json['period'] == null
        ? null
        : DomainRobotTimePeriod.fromJson(
            json['period'] as Map<String, dynamic>),
    price: json['price'] == null
        ? null
        : ExchangedPrice.fromJson(json['price'] as Map<String, dynamic>),
    vatAmount: (json['vatAmount'] as num)?.toDouble(),
    product: json['product'] == null
        ? null
        : Product.fromJson(json['product'] as Map<String, dynamic>),
    provisioning: json['provisioning'] as String,
    subject: json['subject'] == null
        ? null
        : Subject.fromJson(json['subject'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubjectProductToJson(SubjectProduct instance) {
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
  writeNotNull('id', instance.id);
  writeNotNull('period', instance.period);
  writeNotNull('customer', instance.customer);
  writeNotNull('billing', instance.billing);
  writeNotNull('product', instance.product);
  writeNotNull('subject', instance.subject);
  writeNotNull('count', instance.count);
  writeNotNull('effectiveCount', instance.effectiveCount);
  writeNotNull('amount', instance.amount);
  writeNotNull('vatAmount', instance.vatAmount);
  writeNotNull('currency', instance.currency);
  writeNotNull('type', instance.type);
  writeNotNull('price', instance.price);
  writeNotNull('number', instance.number);
  writeNotNull('comment', instance.comment);
  writeNotNull('payable', instance.payable);
  writeNotNull('provisioning', instance.provisioning);
  writeNotNull('netAmount', instance.netAmount);
  writeNotNull('externalAccountingStatus', instance.externalAccountingStatus);
  writeNotNull('view', instance.view);
  return val;
}
