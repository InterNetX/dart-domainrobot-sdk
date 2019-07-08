import 'package:json_annotation/json_annotation.dart';

import 'VatRate.dart';

part 'Vat.g.dart';

@JsonSerializable(includeIfNull: false)
class Vat {
  VatRate rate;
  double amount;

  Vat({this.rate, this.amount});

  /*
   * Json to Location object
   */
  factory Vat.fromJson(Map<String, dynamic> json) => _$VatFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$VatToJson(this);
}
