import 'package:json_annotation/json_annotation.dart';
import 'Domain.dart';
import 'Message.dart';
import 'ResponseObject.dart';
import 'ResponseStatus.dart';

part 'JsonResponseDataDomain.g.dart';

@JsonSerializable()
class JsonResponseDataDomain {
  /// The server transaction id for the response.
  String stid;
  
/// The messages belonging to the response.
  List<Message> messages;
  
/// The status of the response.
  ResponseStatus status;
  
/// The object of the response.
  ResponseObject object;
  
/// The data for the response. The type of the objects are depending on the request and are also specified in the responseObject value of the response.
  List<Domain> data;
  
/// The client transaction id for the response.
  String ctid;
  
  
  
  JsonResponseDataDomain({
  	this.stid,
  	this.messages,
  	this.status,
  	this.object,
  	this.data,
  	this.ctid,
  });

  @override
  String toString() {
    return 'JsonResponseDataDomain[stid=$stid, messages=$messages, status=$status, object=$object, data=$data, ctid=$ctid, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory JsonResponseDataDomain.fromJson(Map<String, dynamic> json) =>
      _$JsonResponseDataDomainFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$JsonResponseDataDomainToJson(this);
  
}

