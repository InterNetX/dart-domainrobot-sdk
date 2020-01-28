import 'package:json_annotation/json_annotation.dart';
import 'JsonResponseDataDomainPrereg.dart';
import 'Message.dart';
import 'ResponseObject.dart';
import 'ResponseStatus.dart';

part 'JsonResponseDataListJsonResponseDataDomainPrereg.g.dart';

@JsonSerializable()
class JsonResponseDataListJsonResponseDataDomainPrereg {
  /// The server transaction id for the response.
  String stid;
  
/// The messages belonging to the response.
  List<Message> messages;
  
/// The status of the response.
  ResponseStatus status;
  
/// The object of the response.
  ResponseObject object;
  
/// The data for the response. The type of the objects are depending on the request and are also specified in the responseObject value of the response.
  List<List<JsonResponseDataDomainPrereg>> data;
  
/// The client transaction id for the response.
  String ctid;
  
  
  
  JsonResponseDataListJsonResponseDataDomainPrereg({
  	this.stid,
  	this.messages,
  	this.status,
  	this.object,
  	this.data,
  	this.ctid,
  });

  @override
  String toString() {
    return 'JsonResponseDataListJsonResponseDataDomainPrereg[stid=$stid, messages=$messages, status=$status, object=$object, data=$data, ctid=$ctid, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory JsonResponseDataListJsonResponseDataDomainPrereg.fromJson(Map<String, dynamic> json) =>
      _$JsonResponseDataListJsonResponseDataDomainPreregFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$JsonResponseDataListJsonResponseDataDomainPreregToJson(this);
  
}

