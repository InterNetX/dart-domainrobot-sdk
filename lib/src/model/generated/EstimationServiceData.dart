import 'package:json_annotation/json_annotation.dart';
import 'DomainStudioServiceStatus.dart';
import 'EstimationData.dart';

part 'EstimationServiceData.g.dart';

@JsonSerializable()
class EstimationServiceData {
  /// The debug time
  int debugTime;
  
/// The status
  DomainStudioServiceStatus status;
  
/// A message with more information, if the status is FAILED.
  String message;
  
/// The service data
  EstimationData data;
  
  
  
  EstimationServiceData({
  	this.debugTime,
  	this.status,
  	this.message,
  	this.data,
  });

  @override
  String toString() {
    return 'EstimationServiceData[debugTime=$debugTime, status=$status, message=$message, data=$data, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory EstimationServiceData.fromJson(Map<String, dynamic> json) =>
      _$EstimationServiceDataFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$EstimationServiceDataToJson(this);
  
}

