import 'package:json_annotation/json_annotation.dart';

import 'AbstractDomainStudioServiceData.dart';
import 'DomainStudioServiceStatus.dart';
import 'WhoisServiceData.dart';

part 'WhoisService.g.dart';

@JsonSerializable()
class WhoisService extends AbstractDomainStudioServiceData {
  WhoisServiceData data;

  WhoisService(
      {this.data,
      double debugTime,
      DomainStudioServiceStatus status,
      String message})
      : super(debugTime, status, message);

  /*
   * Json to Location object
   */
  factory WhoisService.fromJson(Map<String, dynamic> json) =>
      _$WhoisServiceFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$WhoisServiceToJson(this);
}
