import 'dart:core';

import 'package:domainrobot_api/src/model/DomainRobotMessage.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ResponseObject.dart';
import 'ResponseStatus.dart';

part 'DomainRobotApiResponse.g.dart';

///
/// Representation of the generic domainrobot api response
///
@JsonSerializable()
class DomainRobotApiResponse {
  String stid;
  String ctid;
  List<DomainRobotMessage> messages;
  ResponseStatus status;
  ResponseObject object;
  List<dynamic> data;

  DomainRobotApiResponse(
      this.stid, this.ctid, this.messages, this.status, this.object, this.data);

  /*
   * Json to DomainRobotApiResponse object
   */
  factory DomainRobotApiResponse.fromJson(Map<String, dynamic> json) =>
      _$DomainRobotApiResponseFromJson(json);

  /*
   * DomainRobotApiResponse object to json
   */
  Map<String, dynamic> toJson() => _$DomainRobotApiResponseToJson(this);
}
