// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return Invoice(
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
    number: json['number'] as String,
    customer: json['customer'] == null
        ? null
        : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    payment: _$enumDecodeNullable(_$PaymentConstantsEnumMap, json['payment']),
    paymentMode: json['paymentMode'] as String,
    paymentTransaction: json['paymentTransaction'] as String,
    subType: json['subType'] as String,
    sepaMandateReference: json['sepaMandateReference'] as String,
    sepaMandateCollection: json['sepaMandateCollection'] == null
        ? null
        : DateTime.parse(json['sepaMandateCollection'] as String),
    amount: (json['amount'] as num)?.toDouble(),
    vatAmount: (json['vatAmount'] as num)?.toDouble(),
    status:
        _$enumDecodeNullable(_$InvoiceStatusConstantsEnumMap, json['status']),
    type: _$enumDecodeNullable(
        _$AccountingDocumentTypeConstantsEnumMap, json['type']),
    failed: json['failed'] as bool,
    currency: json['currency'] as String,
    paid: json['paid'] == null ? null : DateTime.parse(json['paid'] as String),
    document: json['document'] == null
        ? null
        : Document.fromJson(json['document'] as Map<String, dynamic>),
    comment: json['comment'] as String,
  );
}

Map<String, dynamic> _$InvoiceToJson(Invoice instance) {
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
  writeNotNull('id', instance.id);
  writeNotNull('number', instance.number);
  writeNotNull('customer', instance.customer?.toJson());
  writeNotNull('payment', _$PaymentConstantsEnumMap[instance.payment]);
  writeNotNull('paymentMode', instance.paymentMode);
  writeNotNull('paymentTransaction', instance.paymentTransaction);
  writeNotNull('subType', instance.subType);
  writeNotNull('sepaMandateReference', instance.sepaMandateReference);
  writeNotNull('sepaMandateCollection',
      instance.sepaMandateCollection?.toIso8601String());
  writeNotNull('amount', instance.amount);
  writeNotNull('vatAmount', instance.vatAmount);
  writeNotNull('status', _$InvoiceStatusConstantsEnumMap[instance.status]);
  writeNotNull('type', _$AccountingDocumentTypeConstantsEnumMap[instance.type]);
  writeNotNull('failed', instance.failed);
  writeNotNull('currency', instance.currency);
  writeNotNull('paid', instance.paid?.toIso8601String());
  writeNotNull('document', instance.document?.toJson());
  writeNotNull('comment', instance.comment);
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

const _$PaymentConstantsEnumMap = {
  PaymentConstants.PRE: 'PRE',
  PaymentConstants.POST: 'POST',
  PaymentConstants.LIVE: 'LIVE',
};

const _$InvoiceStatusConstantsEnumMap = {
  InvoiceStatusConstants.CREATED: 'CREATED',
  InvoiceStatusConstants.SIGNED: 'SIGNED',
  InvoiceStatusConstants.SENT: 'SENT',
  InvoiceStatusConstants.RESEND: 'RESEND',
  InvoiceStatusConstants.FINISHED: 'FINISHED',
  InvoiceStatusConstants.LIVECONFIRMED: 'LIVECONFIRMED',
  InvoiceStatusConstants.LIVEPENDING: 'LIVEPENDING',
  InvoiceStatusConstants.POSTPENDING: 'POSTPENDING',
  InvoiceStatusConstants.POSTCONFIRMED: 'POSTCONFIRMED',
};

const _$AccountingDocumentTypeConstantsEnumMap = {
  AccountingDocumentTypeConstants.INVOICE: 'INVOICE',
  AccountingDocumentTypeConstants.CREDIT: 'CREDIT',
  AccountingDocumentTypeConstants.REFUND: 'REFUND',
  AccountingDocumentTypeConstants.CANCELED: 'CANCELED',
  AccountingDocumentTypeConstants.CHARGE: 'CHARGE',
};
