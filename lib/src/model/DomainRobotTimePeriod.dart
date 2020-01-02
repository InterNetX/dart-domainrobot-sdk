import 'package:json_annotation/json_annotation.dart';

part 'DomainRobotTimePeriod.g.dart';

@JsonSerializable()
class DomainRobotTimePeriod {
  String unit;

  int period;

  DomainRobotTimePeriod({this.period, this.unit});

  /*
   * Json to Location object
   */
  factory DomainRobotTimePeriod.fromJson(Map<String, dynamic> json) =>
      _$DomainRobotTimePeriodFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$DomainRobotTimePeriodToJson(this);
}
