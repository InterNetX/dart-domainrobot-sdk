import 'package:json_annotation/json_annotation.dart';

part 'NotifyMessage.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class NotifyMessage {
  /// The specific message type.
  String type;

  NotifyMessage({
    this.type,
  });

  @override
  String toString() {
    return 'NotifyMessage[type=$type, ]';
  }

  ///
  /// Json to Location object
  ///
  factory NotifyMessage.fromJson(Map<String, dynamic> json) =>
      _$NotifyMessageFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$NotifyMessageToJson(this);
}
