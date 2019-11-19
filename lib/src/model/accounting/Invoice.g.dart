// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return Invoice(
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
    document: json['document'] == null
        ? null
        : Document.fromJson(json['document'] as Map<String, dynamic>),
    status: json['status'] as String,
    failed: json['failed'] as bool,
    payment: json['payment'] as String,
    number: json['number'] as String,
    paid: json['paid'] as String,
    paymentMode: json['paymentMode'] as String,
    paymentTransaction: json['paymentTransaction'] as String,
    sepaMandateCollection: json['sepaMandateCollection'] as String,
    sepaMandateReference: json['sepaMandateReference'] as String,
    vatAmount: (json['vatAmount'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$InvoiceToJson(Invoice instance) {
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
  writeNotNull('number', instance.number);
  writeNotNull('customer', instance.customer);
  writeNotNull('payment', instance.payment);
  writeNotNull('paymentMode', instance.paymentMode);
  writeNotNull('paymentTransaction', instance.paymentTransaction);
  writeNotNull('sepaMandateReference', instance.sepaMandateReference);
  writeNotNull('sepaMandateCollection', instance.sepaMandateCollection);
  writeNotNull('amount', instance.amount);
  writeNotNull('vatAmount', instance.vatAmount);
  writeNotNull('status', instance.status);
  writeNotNull('type', instance.type);
  writeNotNull('failed', instance.failed);
  writeNotNull('currency', instance.currency);
  writeNotNull('paid', instance.paid);
  writeNotNull('document', instance.document);
  writeNotNull('comment', instance.comment);
  return val;
}
