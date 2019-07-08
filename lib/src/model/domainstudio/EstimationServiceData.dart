import 'package:json_annotation/json_annotation.dart';

part 'EstimationServiceData.g.dart';

@JsonSerializable()
class EstimationServiceData {
  String currency;

  double amount;

  EstimationServiceData({this.amount, this.currency});

  /*
   * Json to Location object
   */
  factory EstimationServiceData.fromJson(Map<String, dynamic> json) =>
      _$EstimationServiceDataFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$EstimationServiceDataToJson(this);
}
