import 'package:json_annotation/json_annotation.dart';
import 'StatusType.dart';

part 'ResponseStatus.g.dart';

@JsonSerializable()
class ResponseStatus {
  /// The result code of the response
  String code;
  
/// The text representation of the result code.
  String text;
  
/// The status of the response.
  StatusType type;
  
  
  
  ResponseStatus({
  	this.code,
  	this.text,
  	this.type,
  });

  @override
  String toString() {
    return 'ResponseStatus[code=$code, text=$text, type=$type, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ResponseStatus.fromJson(Map<String, dynamic> json) =>
      _$ResponseStatusFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ResponseStatusToJson(this);
  
}

