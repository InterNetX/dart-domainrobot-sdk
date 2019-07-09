import 'package:json_annotation/json_annotation.dart';

import 'GenericCustomer.dart';
import '../User.dart';
import 'Document.dart';

part 'Invoice.g.dart';

@JsonSerializable(includeIfNull: false)
class Invoice {
  String created;
  String updated;
  User owner;
  User updater;
  int id;
  String number;
  GenericCustomer customer;
  String payment;
  String paymentMode;
  String paymentTransaction;
  String sepaMandateReference;
  String sepaMandateCollection;
  double amount;
  double vatAmount;
  String status;
  String type;
  bool failed;
  String currency;
  String paid;
  Document document;
  String comment;

  Invoice(
      {this.created,
      this.updated,
      this.owner,
      this.updater,
      this.id,
      this.currency,
      this.type,
      this.comment,
      this.amount,
      this.customer,
      this.document,
      this.status,
      this.failed,
      this.payment,
      this.number,
      this.paid,
      this.paymentMode,
      this.paymentTransaction,
      this.sepaMandateCollection,
      this.sepaMandateReference,
      this.vatAmount});

  /*
   * Json to Location object
   */
  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
}
