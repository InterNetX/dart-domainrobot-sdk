import 'package:json_annotation/json_annotation.dart';

import '../User.dart';
import 'Account.dart';
import 'AccountEntry.dart';
import 'CurrencyRate.dart';
import 'Invoice.dart';
import 'SubjectProduct.dart';

part 'AccountingDocument.g.dart';

@JsonSerializable(includeIfNull: false)
class AccountingDocument {
  String created;
  String updated;
  User owner;
  User updater;
  int id;
  AccountEntry entry;
  String type;
  Account account;
  List<SubjectProduct> subjectProducts;
  CurrencyRate view;
  bool synchronized;
  String status;
  Invoice invoice;
  String payment;

  AccountingDocument(
      {this.created,
      this.updated,
      this.owner,
      this.updater,
      this.id,
      this.entry,
      this.type,
      this.account,
      this.subjectProducts,
      this.view,
      this.synchronized,
      this.status,
      this.invoice,
      this.payment});

  /*
   * Json to Location object
   */
  factory AccountingDocument.fromJson(Map<String, dynamic> json) =>
      _$AccountingDocumentFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$AccountingDocumentToJson(this);
}
