import 'package:json_annotation/json_annotation.dart';

import '../GenericCustomer.dart';
import 'CurrencyRate.dart';

part 'Account.g.dart';

@JsonSerializable(includeIfNull: false)
class Account {
  GenericCustomer customer;
  double currentAccountBalance;
  double runningTotal;
  double creditLimit;
  String currency;
  double minRunningTotalNotification;
  String minRunningTotalNotificationEmail;
  String created;
  String updated;
  CurrencyRate view;

  Account(
      {this.created,
      this.updated,
      this.customer,
      this.runningTotal,
      this.creditLimit,
      this.currency,
      this.minRunningTotalNotification,
      this.minRunningTotalNotificationEmail,
      this.view});

  /*
   * Json to Location object
   */
  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}
