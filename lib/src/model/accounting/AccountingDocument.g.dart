// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AccountingDocument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountingDocument _$AccountingDocumentFromJson(Map<String, dynamic> json) {
  return AccountingDocument(
      created: json['created'] as String,
      updated: json['updated'] as String,
      owner: json['owner'] == null
          ? null
          : User.fromJson(json['owner'] as Map<String, dynamic>),
      updater: json['updater'] == null
          ? null
          : User.fromJson(json['updater'] as Map<String, dynamic>),
      id: json['id'] as int,
      entry: json['entry'] == null
          ? null
          : AccountEntry.fromJson(json['entry'] as Map<String, dynamic>),
      type: json['type'] as String,
      account: json['account'] == null
          ? null
          : Account.fromJson(json['account'] as Map<String, dynamic>),
      subjectProducts: (json['subjectProducts'] as List)
          ?.map((e) => e == null
              ? null
              : SubjectProduct.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      view: json['view'] == null
          ? null
          : CurrencyRate.fromJson(json['view'] as Map<String, dynamic>),
      synchronized: json['synchronized'] as bool,
      status: json['status'] as String,
      invoice: json['invoice'] == null
          ? null
          : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
      payment: json['payment'] as String);
}

Map<String, dynamic> _$AccountingDocumentToJson(AccountingDocument instance) {
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
  writeNotNull('entry', instance.entry);
  writeNotNull('type', instance.type);
  writeNotNull('account', instance.account);
  writeNotNull('subjectProducts', instance.subjectProducts);
  writeNotNull('view', instance.view);
  writeNotNull('synchronized', instance.synchronized);
  writeNotNull('status', instance.status);
  writeNotNull('invoice', instance.invoice);
  writeNotNull('payment', instance.payment);
  return val;
}
