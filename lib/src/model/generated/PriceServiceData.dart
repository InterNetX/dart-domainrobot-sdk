import 'package:json_annotation/json_annotation.dart';
import 'DomainStudioServiceStatus.dart';
import 'PriceData.dart';

part 'PriceServiceData.g.dart';

@JsonSerializable()
class PriceServiceData {
  /// The debug time
  int debugTime;
  
/// The status
  DomainStudioServiceStatus status;
  
/// A message with more information, if the status is FAILED.
  String message;
  
/// The subject products
  PriceData data;
  
  
  
  PriceServiceData({
  	this.debugTime,
  	this.status,
  	this.message,
  	this.data,
  });

  @override
  String toString() {
    return 'PriceServiceData[debugTime=$debugTime, status=$status, message=$message, data=$data, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory PriceServiceData.fromJson(Map<String, dynamic> json) =>
      _$PriceServiceDataFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$PriceServiceDataToJson(this);
  
}

