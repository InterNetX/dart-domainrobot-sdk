import 'package:json_annotation/json_annotation.dart';
import 'JsonResponseDataMailProxy.dart';
import 'Message.dart';
import 'ResponseObject.dart';
import 'ResponseStatus.dart';

part 'JsonResponseDataListJsonResponseDataMailProxy.g.dart';

@JsonSerializable()
class JsonResponseDataListJsonResponseDataMailProxy {
  /// The server transaction id for the response.
  String stid;
  
/// The messages belonging to the response.
  List<Message> messages;
  
/// The status of the response.
  ResponseStatus status;
  
/// The object of the response.
  ResponseObject object;
  
/// The data for the response. The type of the objects are depending on the request and are also specified in the responseObject value of the response.
  List<List<JsonResponseDataMailProxy>> data;
  
/// The client transaction id for the response.
  String ctid;
  
  
  
  JsonResponseDataListJsonResponseDataMailProxy({
  	this.stid,
  	this.messages,
  	this.status,
  	this.object,
  	this.data,
  	this.ctid,
  });

  @override
  String toString() {
    return 'JsonResponseDataListJsonResponseDataMailProxy[stid=$stid, messages=$messages, status=$status, object=$object, data=$data, ctid=$ctid, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory JsonResponseDataListJsonResponseDataMailProxy.fromJson(Map<String, dynamic> json) =>
      _$JsonResponseDataListJsonResponseDataMailProxyFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$JsonResponseDataListJsonResponseDataMailProxyToJson(this);
  
}

