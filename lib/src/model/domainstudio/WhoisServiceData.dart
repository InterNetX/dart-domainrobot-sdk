import 'package:json_annotation/json_annotation.dart';

import 'WhoisStatus.dart';

part 'WhoisServiceData.g.dart';

@JsonSerializable()
class WhoisServiceData {
  WhoisStatus status;

  WhoisServiceData({this.status});

  /*
   * Json to Location object
   */
  factory WhoisServiceData.fromJson(Map<String, dynamic> json) =>
      _$WhoisServiceDataFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$WhoisServiceDataToJson(this);
}
