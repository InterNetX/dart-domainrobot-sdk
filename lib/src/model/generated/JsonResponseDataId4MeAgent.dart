import 'package:json_annotation/json_annotation.dart';
import 'Id4MeAgent.dart';
import 'Message.dart';
import 'ResponseObject.dart';
import 'ResponseStatus.dart';

part 'JsonResponseDataId4MeAgent.g.dart';

@JsonSerializable()
class JsonResponseDataId4MeAgent {
  /// The server transaction id for the response.
  String stid;
  
/// The messages belonging to the response.
  List<Message> messages;
  
/// The status of the response.
  ResponseStatus status;
  
/// The object of the response.
  ResponseObject object;
  
/// The data for the response. The type of the objects are depending on the request and are also specified in the responseObject value of the response.
  List<Id4MeAgent> data;
  
/// The client transaction id for the response.
  String ctid;
  
  
  
  JsonResponseDataId4MeAgent({
  	this.stid,
  	this.messages,
  	this.status,
  	this.object,
  	this.data,
  	this.ctid,
  });

  @override
  String toString() {
    return 'JsonResponseDataId4MeAgent[stid=$stid, messages=$messages, status=$status, object=$object, data=$data, ctid=$ctid, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory JsonResponseDataId4MeAgent.fromJson(Map<String, dynamic> json) =>
      _$JsonResponseDataId4MeAgentFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$JsonResponseDataId4MeAgentToJson(this);
  
}

