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

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'owner': instance.owner,
      'updater': instance.updater,
      'id': instance.id,
      'number': instance.number,
      'customer': instance.customer,
      'payment': _$PaymentConstantsEnumMap[instance.payment],
      'paymentMode': instance.paymentMode,
      'paymentTransaction': instance.paymentTransaction,
      'subType': instance.subType,
      'sepaMandateReference': instance.sepaMandateReference,
      'sepaMandateCollection':
          instance.sepaMandateCollection?.toIso8601String(),
      'amount': instance.amount,
      'vatAmount': instance.vatAmount,
      'status': _$InvoiceStatusConstantsEnumMap[instance.status],
      'type': _$AccountingDocumentTypeConstantsEnumMap[instance.type],
      'failed': instance.failed,
      'currency': instance.currency,
      'paid': instance.paid?.toIso8601String(),
      'document': instance.document,
      'comment': instance.comment,
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
