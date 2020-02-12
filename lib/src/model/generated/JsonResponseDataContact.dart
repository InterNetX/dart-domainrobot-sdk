import 'package:json_annotation/json_annotation.dart';
import 'Contact.dart';
import 'Message.dart';
import 'ResponseObject.dart';
import 'ResponseStatus.dart';

part 'JsonResponseDataContact.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class JsonResponseDataContact {
  /// The server transaction id for the response.
  String stid;

  /// The messages belonging to the response.
  List<Message> messages;

  /// The status of the response.
  ResponseStatus status;

  /// The object of the response.
  ResponseObject object;

  /// The data for the response. The type of the objects are depending on the request and are also specified in the responseObject value of the response.
  List<Contact> data;

  /// The client transaction id for the response.
  String ctid;

  JsonResponseDataContact({
    this.stid,
    this.messages,
    this.status,
    this.object,
    this.data,
    this.ctid,
  });

  @override
  String toString() {
    return 'JsonResponseDataContact[stid=$stid, messages=$messages, status=$status, object=$object, data=$data, ctid=$ctid, ]';
  }

  ///
  /// Json to Location object
  ///
  factory JsonResponseDataContact.fromJson(Map<String, dynamic> json) =>
      _$JsonResponseDataContactFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$JsonResponseDataContactToJson(this);
}
