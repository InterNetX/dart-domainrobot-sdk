import 'package:json_annotation/json_annotation.dart';

part 'ResponseObject.g.dart';

@JsonSerializable()
class ResponseObject {
  /// The type of the object.
  String type;
  
/// The primary key of the object.
  String value;
  
/// The amound of objects found in list tasks.
  int summary;
  
/// The value of the object.
  Object data;
  
  
  
  ResponseObject({
  	this.type,
  	this.value,
  	this.summary,
  	this.data,
  });

  @override
  String toString() {
    return 'ResponseObject[type=$type, value=$value, summary=$summary, data=$data, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ResponseObject.fromJson(Map<String, dynamic> json) =>
      _$ResponseObjectFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ResponseObjectToJson(this);
  
}

