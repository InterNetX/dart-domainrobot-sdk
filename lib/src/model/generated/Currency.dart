import 'package:json_annotation/json_annotation.dart';

part 'Currency.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Currency {
  Currency();

  @override
  String toString() {
    return 'Currency[]';
  }

  ///
  /// Json to Location object
  ///
  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$CurrencyToJson(this);
}
