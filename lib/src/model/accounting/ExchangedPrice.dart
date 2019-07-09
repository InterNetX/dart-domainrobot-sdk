import 'package:json_annotation/json_annotation.dart';

import '../User.dart';
import '../DomainRobotTimePeriod.dart';

import 'GenericCustomer.dart';
import 'PriceServiceEntity.dart';

part 'ExchangedPrice.g.dart';

@JsonSerializable(includeIfNull: false)
class ExchangedPrice {
  String created;
  String updated;
  User owner;
  User updater;
  double amount;
  String type;
  String currency;
  String priority;
  GenericCustomer customer;
  DomainRobotTimePeriod period;
  bool discountable;
  int logId;
  int refund;
  List<PriceServiceEntity> priceConditions;
  String comment;
  ExchangedPrice normalPrice;
  String valid;
  String vatRate;
  double vatAmount;
  double rate;

  ExchangedPrice(
      {this.created,
      this.updated,
      this.owner,
      this.updater,
      this.discountable,
      this.currency,
      this.type,
      this.comment,
      this.amount,
      this.customer,
      this.logId,
      this.priceConditions,
      this.normalPrice,
      this.priority,
      this.rate,
      this.refund,
      this.valid,
      this.vatRate,
      this.period,
      this.vatAmount});

  /*
   * Json to Location object
   */
  factory ExchangedPrice.fromJson(Map<String, dynamic> json) =>
      _$ExchangedPriceFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$ExchangedPriceToJson(this);
}
