import 'package:json_annotation/json_annotation.dart';

part 'DomainRobotMessage.g.dart';

@JsonSerializable()
class DomainRobotMessage {
  String text;
  String code;
  String type;

  DomainRobotMessage(this.text, this.type, this.code);

  /*
   * Json to DomainRobotMessage object
   */
  factory DomainRobotMessage.fromJson(Map<String, dynamic> json) =>
      _$DomainRobotMessageFromJson(json);

  /*
   * DomainRobotMessage object to json
   */
  Map<String, dynamic> toJson() => _$DomainRobotMessageToJson(this);
}
