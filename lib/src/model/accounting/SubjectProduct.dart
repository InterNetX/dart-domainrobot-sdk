import 'package:json_annotation/json_annotation.dart';

import '../DomainRobotTimePeriod.dart';

import 'GenericCustomer.dart';
import '../User.dart';
import 'CurrencyRate.dart';
import 'ExchangedPrice.dart';
import 'Product.dart';
import 'Subject.dart';

part 'SubjectProduct.g.dart';

@JsonSerializable(includeIfNull: false)
class SubjectProduct {
  String created;
  String updated;
  User owner;
  User updater;
  int id;
  DomainRobotTimePeriod period;
  GenericCustomer customer;
  User billing;
  Product product;
  Subject subject;
  double count;
  double effectiveCount;
  double amount;
  double vatAmount;
  String currency;
  String type;
  ExchangedPrice price;
  String number;
  String comment;
  String payable;
  String provisioning;
  double netAmount;
  String externalAccountingStatus;
  CurrencyRate view;

  SubjectProduct(
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
      this.view,
      this.externalAccountingStatus,
      this.billing,
      this.count,
      this.number,
      this.effectiveCount,
      this.netAmount,
      this.payable,
      this.period,
      this.price,
      this.vatAmount,
      this.product,
      this.provisioning,
      this.subject});

  /*
   * Json to Location object
   */
  factory SubjectProduct.fromJson(Map<String, dynamic> json) =>
      _$SubjectProductFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$SubjectProductToJson(this);
}
