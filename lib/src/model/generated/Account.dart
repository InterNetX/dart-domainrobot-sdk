import 'package:json_annotation/json_annotation.dart';
import 'CurrencyRate.dart';
import 'GenericCustomer.dart';

part 'Account.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Account {
  /// The customer itself
  GenericCustomer customer;

  /// The real account balance
  double currentAccountBalance;

  /// The current total, the amount of all finished and unfinished transactions
  double runningTotal;

  /// The credit limit of the account.
  double creditLimit;

  /// The currency of the account
  String currency;

  /// The minimum running total amount if a notification should be send
  double minRunningTotalNotification;

  /// The recipient of the notification limit email
  String minRunningTotalNotificationEmail;

  /// The date of the acccount creation
  DateTime created;

  /// The date of the las update.
  DateTime updated;

  /// The selected exchange for the account
  CurrencyRate view;

  Account({
    this.customer,
    this.currentAccountBalance,
    this.runningTotal,
    this.creditLimit,
    this.currency,
    this.minRunningTotalNotification,
    this.minRunningTotalNotificationEmail,
    this.created,
    this.updated,
    this.view,
  });

  @override
  String toString() {
    return 'Account[customer=$customer, currentAccountBalance=$currentAccountBalance, runningTotal=$runningTotal, creditLimit=$creditLimit, currency=$currency, minRunningTotalNotification=$minRunningTotalNotification, minRunningTotalNotificationEmail=$minRunningTotalNotificationEmail, created=$created, updated=$updated, view=$view, ]';
  }

  ///
  /// Json to Location object
  ///
  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}
