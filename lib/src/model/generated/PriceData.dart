import 'package:json_annotation/json_annotation.dart';
import 'SimplePrice.dart';

part 'PriceData.g.dart';

@JsonSerializable()
class PriceData {
  /// The subject products
  List<SimplePrice> prices;
  
  
  
  PriceData({
  	this.prices,
  });

  @override
  String toString() {
    return 'PriceData[prices=$prices, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory PriceData.fromJson(Map<String, dynamic> json) =>
      _$PriceDataFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$PriceDataToJson(this);
  
}

