import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'Customer.dart';
import 'PriceServiceEntity.dart';
import 'PriceTypeConstants.dart';
import 'PriorityConstants.dart';
import 'TimePeriod.dart';

part 'ExchangedPrice.g.dart';

@JsonSerializable()
class ExchangedPrice {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// The owner of the object.
  BasicUser owner;
  
/// The updating user of the object.
  BasicUser updater;
  
/// Lorem Ipum
  double amount;
  
/// Lorem Ipum
  PriceTypeConstants type;
  
/// Lorem Ipsum
  String currency;
  
/// Lorem Ipum
  PriorityConstants priority;
  
/// Lorem Ipum
  Customer customer;
  
/// Lorem Ipum
  TimePeriod period;
  
/// Lorem Ipum
  bool discountable;
  
/// Lorem Ipum
  int logId;
  
/// Lorem Ipum
  int refund;
  
/// Lorem Ipum
  List<PriceServiceEntity> priceConditions;
  
/// Lorem Ipum
  String comment;
  
/// Lorem Ipum
  ExchangedPrice normalPrice;
  
/// Lorem Ipum
  DateTime valid;
  
/// Lorem Ipsum
  double vatRate;
  
/// Lorem Ipsum
  double vatAmount;
  
/// Lorem Ipsum
  double rate;
  
  
  
  ExchangedPrice({
  	this.created,
  	this.updated,
  	this.owner,
  	this.updater,
  	this.amount,
  	this.type,
  	this.currency,
  	this.priority,
  	this.customer,
  	this.period,
  	this.discountable,
  	this.logId,
  	this.refund,
  	this.priceConditions,
  	this.comment,
  	this.normalPrice,
  	this.valid,
  	this.vatRate,
  	this.vatAmount,
  	this.rate,
  });

  @override
  String toString() {
    return 'ExchangedPrice[created=$created, updated=$updated, owner=$owner, updater=$updater, amount=$amount, type=$type, currency=$currency, priority=$priority, customer=$customer, period=$period, discountable=$discountable, logId=$logId, refund=$refund, priceConditions=$priceConditions, comment=$comment, normalPrice=$normalPrice, valid=$valid, vatRate=$vatRate, vatAmount=$vatAmount, rate=$rate, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ExchangedPrice.fromJson(Map<String, dynamic> json) =>
      _$ExchangedPriceFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ExchangedPriceToJson(this);
  
}

