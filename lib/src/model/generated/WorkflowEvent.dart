import 'package:json_annotation/json_annotation.dart';

part 'WorkflowEvent.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class WorkflowEvent {
  /// Lorem Ipsum
  int vertex;

  /// Lorem Ipsum
  String type;

  WorkflowEvent({
    this.vertex,
    this.type,
  });

  @override
  String toString() {
    return 'WorkflowEvent[vertex=$vertex, type=$type, ]';
  }

  ///
  /// Json to Location object
  ///
  factory WorkflowEvent.fromJson(Map<String, dynamic> json) =>
      _$WorkflowEventFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$WorkflowEventToJson(this);
}
