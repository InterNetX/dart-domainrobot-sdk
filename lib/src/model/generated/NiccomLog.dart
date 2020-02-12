import 'package:json_annotation/json_annotation.dart';
import 'NiccomSourceConstants.dart';

part 'NiccomLog.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class NiccomLog {
  /// The jobId of the niccom log.
  int jobId;

  /// The vertexId of the niccom log.
  int vertexId;

  /// The name of the niccom log.
  String name;

  /// The task of the niccom log.
  String task;

  /// The nicTransactionId of the niccom log.
  String nicTransactionId;

  /// The source of the niccom log.
  NiccomSourceConstants source;

  /// The text of the niccom log.
  String text;

  /// The created date of the niccom log.
  DateTime created;

  NiccomLog({
    this.jobId,
    this.vertexId,
    this.name,
    this.task,
    this.nicTransactionId,
    this.source,
    this.text,
    this.created,
  });

  @override
  String toString() {
    return 'NiccomLog[jobId=$jobId, vertexId=$vertexId, name=$name, task=$task, nicTransactionId=$nicTransactionId, source=$source, text=$text, created=$created, ]';
  }

  ///
  /// Json to Location object
  ///
  factory NiccomLog.fromJson(Map<String, dynamic> json) =>
      _$NiccomLogFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$NiccomLogToJson(this);
}
