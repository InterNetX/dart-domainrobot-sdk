import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'Message.dart';
import 'NotifyMessage.dart';
import 'ResponseObject.dart';
import 'WorkflowSpool.dart';

part 'PollMessage.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class PollMessage {
  /// The message id.
  int id;

  /// The owner of the message.
  BasicUser owner;

  /// The job data. Available if the message is a job message
  WorkflowSpool job;

  /// The notification data. Available if the message is a notification message
  NotifyMessage notify;

  /// The server transaction id.
  String stid;

  /// the custom transaction id.
  String ctid;

  /// The general localized messages.
  List<Message> messages;

  /// Optional message flags.
  String flags;

  /// The created date.
  DateTime created;

  /// The object of the job or notify.
  ResponseObject object;

  PollMessage({
    this.id,
    this.owner,
    this.job,
    this.notify,
    this.stid,
    this.ctid,
    this.messages,
    this.flags,
    this.created,
    this.object,
  });

  @override
  String toString() {
    return 'PollMessage[id=$id, owner=$owner, job=$job, notify=$notify, stid=$stid, ctid=$ctid, messages=$messages, flags=$flags, created=$created, object=$object, ]';
  }

  ///
  /// Json to Location object
  ///
  factory PollMessage.fromJson(Map<String, dynamic> json) =>
      _$PollMessageFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$PollMessageToJson(this);
}
