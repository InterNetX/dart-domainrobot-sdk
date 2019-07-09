import 'package:json_annotation/json_annotation.dart';

import 'accounting/ExchangedPrice.dart';

part 'SimplePrice.g.dart';

@JsonSerializable(includeIfNull: false)
class SimplePrice {
  ExchangedPrice price;
  String businessCase;

  SimplePrice({this.businessCase, this.price});

  /*
   * Json to Location object
   */
  factory SimplePrice.fromJson(Map<String, dynamic> json) =>
      _$SimplePriceFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$SimplePriceToJson(this);
}
