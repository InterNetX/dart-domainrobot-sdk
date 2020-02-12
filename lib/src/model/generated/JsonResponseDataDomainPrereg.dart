import 'package:json_annotation/json_annotation.dart';
import 'DomainPrereg.dart';
import 'Message.dart';
import 'ResponseObject.dart';
import 'ResponseStatus.dart';

part 'JsonResponseDataDomainPrereg.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class JsonResponseDataDomainPrereg {
  /// The server transaction id for the response.
  String stid;

  /// The messages belonging to the response.
  List<Message> messages;

  /// The status of the response.
  ResponseStatus status;

  /// The object of the response.
  ResponseObject object;

  /// The data for the response. The type of the objects are depending on the request and are also specified in the responseObject value of the response.
  List<DomainPrereg> data;

  /// The client transaction id for the response.
  String ctid;

  JsonResponseDataDomainPrereg({
    this.stid,
    this.messages,
    this.status,
    this.object,
    this.data,
    this.ctid,
  });

  @override
  String toString() {
    return 'JsonResponseDataDomainPrereg[stid=$stid, messages=$messages, status=$status, object=$object, data=$data, ctid=$ctid, ]';
  }

  ///
  /// Json to Location object
  ///
  factory JsonResponseDataDomainPrereg.fromJson(Map<String, dynamic> json) =>
      _$JsonResponseDataDomainPreregFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$JsonResponseDataDomainPreregToJson(this);
}
