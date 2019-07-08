import 'package:json_annotation/json_annotation.dart';

part 'CurrencyRate.g.dart';

@JsonSerializable(includeIfNull: false)
class CurrencyRate {
  String currency;
  double rate;

  CurrencyRate({this.currency, this.rate});

  /*
   * Json to Location object
   */
  factory CurrencyRate.fromJson(Map<String, dynamic> json) =>
      _$CurrencyRateFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$CurrencyRateToJson(this);
}
