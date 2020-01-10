import 'package:json_annotation/json_annotation.dart';
import 'TimeUnitConstants.dart';

part 'TimePeriod.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class TimePeriod {
  /// The unit of the period
  TimeUnitConstants unit;

  /// The period value
  int period;

  TimePeriod({
    this.unit,
    this.period,
  });

  @override
  String toString() {
    return 'TimePeriod[unit=$unit, period=$period, ]';
  }

  ///
  /// Json to Location object
  ///
  factory TimePeriod.fromJson(Map<String, dynamic> json) =>
      _$TimePeriodFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$TimePeriodToJson(this);
}
