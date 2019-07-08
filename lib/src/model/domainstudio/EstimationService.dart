import 'package:json_annotation/json_annotation.dart';

import 'AbstractDomainStudioServiceData.dart';
import 'DomainStudioServiceStatus.dart';
import 'EstimationServiceData.dart';

part 'EstimationService.g.dart';

@JsonSerializable()
class EstimationService extends AbstractDomainStudioServiceData {
  EstimationServiceData data;

  EstimationService(
      {this.data,
      double debugTime,
      DomainStudioServiceStatus status,
      String message})
      : super(debugTime, status, message);

  /*
   * Json to Location object
   */
  factory EstimationService.fromJson(Map<String, dynamic> json) =>
      _$EstimationServiceFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$EstimationServiceToJson(this);
}
