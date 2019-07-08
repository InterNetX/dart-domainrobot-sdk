import 'package:json_annotation/json_annotation.dart';

part 'VatRate.g.dart';

@JsonSerializable()
class VatRate {
  String created;
  String updated;

  VatRate({this.created, this.updated});

  /*
   * Json to Location object
   */
  factory VatRate.fromJson(Map<String, dynamic> json) =>
      _$VatRateFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$VatRateToJson(this);
}
