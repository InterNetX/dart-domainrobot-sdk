import 'package:domainrobot_api/src/model/SimplePrice.dart';
import 'package:json_annotation/json_annotation.dart';

import 'WhoisStatus.dart';

part 'PriceServiceData.g.dart';

@JsonSerializable()
class PriceServiceData {
  List<SimplePrice> prices;

  PriceServiceData({this.prices});

  /*
   * Json to Location object
   */
  factory PriceServiceData.fromJson(Map<String, dynamic> json) =>
      _$PriceServiceDataFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$PriceServiceDataToJson(this);
}
