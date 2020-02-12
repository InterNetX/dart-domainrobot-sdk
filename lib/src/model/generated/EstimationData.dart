import 'package:json_annotation/json_annotation.dart';

part 'EstimationData.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class EstimationData {
  /// The currency
  String currency;

  /// The amount
  double amount;

  EstimationData({
    this.currency,
    this.amount,
  });

  @override
  String toString() {
    return 'EstimationData[currency=$currency, amount=$amount, ]';
  }

  ///
  /// Json to Location object
  ///
  factory EstimationData.fromJson(Map<String, dynamic> json) =>
      _$EstimationDataFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$EstimationDataToJson(this);
}
