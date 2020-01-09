import 'package:json_annotation/json_annotation.dart';
import 'AccountingDocumentTypeConstants.dart';
import 'BasicUser.dart';
import 'Customer.dart';
import 'Document.dart';
import 'InvoiceStatusConstants.dart';
import 'PaymentConstants.dart';

part 'Invoice.g.dart';

@JsonSerializable()
class Invoice {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// The owner of the object.
  BasicUser owner;
  
/// The updater of the object.
  BasicUser updater;
  
/// Lorem Ipsum
  int id;
  
/// Lorem Ipsum
  String number;
  
/// Lorem Ipum
  Customer customer;
  
/// Lorem Ipsum
  PaymentConstants payment;
  
/// Lorem Ipsum
  String paymentMode;
  
/// Lorem Ipsum
  String paymentTransaction;
  
/// The sub type of the invoice, e.g. domain invoice or server invoice
  String subType;
  
/// Lorem Ipsum
  String sepaMandateReference;
  
/// Lorem Ipsum
  DateTime sepaMandateCollection;
  
/// Lorem Ipsum
  double amount;
  
/// Lorem Ipsum
  double vatAmount;
  
/// Lorem Ipsum
  InvoiceStatusConstants status;
  
/// Lorem Ipsum
  AccountingDocumentTypeConstants type;
  
/// Lorem Ipsum
  bool failed;
  
/// Lorem Ipsum
  String currency;
  
/// Lorem Ipsum
  DateTime paid;
  
/// Lorem Ipsum
  Document document;
  
/// Lorem Ipsum
  String comment;
  
  
  
  Invoice({
  	this.created,
  	this.updated,
  	this.owner,
  	this.updater,
  	this.id,
  	this.number,
  	this.customer,
  	this.payment,
  	this.paymentMode,
  	this.paymentTransaction,
  	this.subType,
  	this.sepaMandateReference,
  	this.sepaMandateCollection,
  	this.amount,
  	this.vatAmount,
  	this.status,
  	this.type,
  	this.failed,
  	this.currency,
  	this.paid,
  	this.document,
  	this.comment,
  });

  @override
  String toString() {
    return 'Invoice[created=$created, updated=$updated, owner=$owner, updater=$updater, id=$id, number=$number, customer=$customer, payment=$payment, paymentMode=$paymentMode, paymentTransaction=$paymentTransaction, subType=$subType, sepaMandateReference=$sepaMandateReference, sepaMandateCollection=$sepaMandateCollection, amount=$amount, vatAmount=$vatAmount, status=$status, type=$type, failed=$failed, currency=$currency, paid=$paid, document=$document, comment=$comment, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
  
}

