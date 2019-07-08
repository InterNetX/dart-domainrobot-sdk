import 'package:json_annotation/json_annotation.dart';

import 'AbstractDomainStudioServiceData.dart';
import 'DomainStudioServiceStatus.dart';
import 'PriceServiceData.dart';

part 'PriceService.g.dart';

@JsonSerializable()
class PriceService extends AbstractDomainStudioServiceData {
  PriceServiceData data;

  PriceService(
      {this.data,
      double debugTime,
      DomainStudioServiceStatus status,
      String message})
      : super(debugTime, status, message);

  /*
   * Json to Location object
   */
  factory PriceService.fromJson(Map<String, dynamic> json) =>
      _$PriceServiceFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$PriceServiceToJson(this);
}
