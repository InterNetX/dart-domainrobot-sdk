import 'package:json_annotation/json_annotation.dart';
import 'GenericObject.dart';
import 'StatusType.dart';

part 'Message.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Message {
  /// The text.
  String text;

  /// The messages.
  List<Message> messages;

  /// The objects.
  List<GenericObject> objects;

  /// The message code.
  String code;

  /// The status of the message code.
  StatusType status;

  Message({
    this.text,
    this.messages,
    this.objects,
    this.code,
    this.status,
  });

  @override
  String toString() {
    return 'Message[text=$text, messages=$messages, objects=$objects, code=$code, status=$status, ]';
  }

  ///
  /// Json to Location object
  ///
  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
