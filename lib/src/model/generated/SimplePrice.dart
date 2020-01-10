import 'package:json_annotation/json_annotation.dart';
import 'ExchangedPrice.dart';
import 'TimePeriod.dart';

part 'SimplePrice.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class SimplePrice {
  /// The price
  ExchangedPrice price;

  /// The business case
  String businessCase;

  /// The period for the price
  TimePeriod period;

  SimplePrice({
    this.price,
    this.businessCase,
    this.period,
  });

  @override
  String toString() {
    return 'SimplePrice[price=$price, businessCase=$businessCase, period=$period, ]';
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
