import 'package:json_annotation/json_annotation.dart';
import 'CurrencyRate.dart';
import 'Custom.dart';
import 'ExchangedPrice.dart';
import 'TimePeriod.dart';

part 'SimplePrice.g.dart';

@JsonSerializable()
class SimplePrice {
  /// The gross amount of the calculation
  double amount;
  
/// The net amount of the calculation
  double netAmount;
  
/// The calculated vat amount
  double vatAmount;
  
/// The billing currency
  String currency;
  
/// The price. Note the currency can be differ from the billing currency
  ExchangedPrice price;
  
/// The business case
  String businessCase;
  
/// The period for the price calculation
  TimePeriod period;
  
/// Custom values,such as price class
  List<Custom> customs;
  
/// The currency rate for the view currency
  CurrencyRate view;
  
  
  
  SimplePrice({
  	this.amount,
  	this.netAmount,
  	this.vatAmount,
  	this.currency,
  	this.price,
  	this.businessCase,
  	this.period,
  	this.customs,
  	this.view,
  });

  @override
  String toString() {
    return 'SimplePrice[amount=$amount, netAmount=$netAmount, vatAmount=$vatAmount, currency=$currency, price=$price, businessCase=$businessCase, period=$period, customs=$customs, view=$view, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory SimplePrice.fromJson(Map<String, dynamic> json) =>
      _$SimplePriceFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$SimplePriceToJson(this);
  
}

