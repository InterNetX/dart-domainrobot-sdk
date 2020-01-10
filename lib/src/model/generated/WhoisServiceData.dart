import 'package:json_annotation/json_annotation.dart';
import 'DomainStudioServiceStatus.dart';
import 'WhoisStatus.dart';

part 'WhoisServiceData.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class WhoisServiceData {
  /// The debug time
  int debugTime;

  /// The status
  DomainStudioServiceStatus status;

  /// A message with more information, if the status is FAILED.
  String message;

  /// The service data
  WhoisStatus data;

  WhoisServiceData({
    this.debugTime,
    this.status,
    this.message,
    this.data,
  });

  @override
  String toString() {
    return 'WhoisServiceData[debugTime=$debugTime, status=$status, message=$message, data=$data, ]';
  }

  ///
  /// Json to Location object
  ///
  factory WhoisServiceData.fromJson(Map<String, dynamic> json) =>
      _$WhoisServiceDataFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$WhoisServiceDataToJson(this);
}
