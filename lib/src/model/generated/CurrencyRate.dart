import 'package:json_annotation/json_annotation.dart';

part 'CurrencyRate.g.dart';

@JsonSerializable()
class CurrencyRate {
  /// The currency of the exchange
  String currency;
  
/// the rate of the exchange
  double rate;
  
  
  
  CurrencyRate({
  	this.currency,
  	this.rate,
  });

  @override
  String toString() {
    return 'CurrencyRate[currency=$currency, rate=$rate, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory CurrencyRate.fromJson(Map<String, dynamic> json) =>
      _$CurrencyRateFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$CurrencyRateToJson(this);
  
}

