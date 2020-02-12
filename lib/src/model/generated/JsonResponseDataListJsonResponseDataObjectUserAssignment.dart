import 'package:json_annotation/json_annotation.dart';
import 'JsonResponseDataObjectUserAssignment.dart';
import 'Message.dart';
import 'ResponseObject.dart';
import 'ResponseStatus.dart';

part 'JsonResponseDataListJsonResponseDataObjectUserAssignment.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class JsonResponseDataListJsonResponseDataObjectUserAssignment {
  /// The server transaction id for the response.
  String stid;

  /// The messages belonging to the response.
  List<Message> messages;

  /// The status of the response.
  ResponseStatus status;

  /// The object of the response.
  ResponseObject object;

  /// The data for the response. The type of the objects are depending on the request and are also specified in the responseObject value of the response.
  List<List<JsonResponseDataObjectUserAssignment>> data;

  /// The client transaction id for the response.
  String ctid;

  JsonResponseDataListJsonResponseDataObjectUserAssignment({
    this.stid,
    this.messages,
    this.status,
    this.object,
    this.data,
    this.ctid,
  });

  @override
  String toString() {
    return 'JsonResponseDataListJsonResponseDataObjectUserAssignment[stid=$stid, messages=$messages, status=$status, object=$object, data=$data, ctid=$ctid, ]';
  }

  ///
  /// Json to Location object
  ///
  factory JsonResponseDataListJsonResponseDataObjectUserAssignment.fromJson(
          Map<String, dynamic> json) =>
      _$JsonResponseDataListJsonResponseDataObjectUserAssignmentFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() =>
      _$JsonResponseDataListJsonResponseDataObjectUserAssignmentToJson(this);
}
