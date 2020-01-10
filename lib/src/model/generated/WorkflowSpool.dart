import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'JobStatusConstants.dart';

part 'WorkflowSpool.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class WorkflowSpool {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The owner of the object.
  BasicUser owner;

  /// The updater of the object.
  BasicUser updater;

  /// The status of the job.
  JobStatusConstants status;

  /// The substatus of the job.
  String subStatus;

  /// The next execution date of the job.
  DateTime execution;

  /// The job id.
  int id;

  WorkflowSpool({
    this.created,
    this.updated,
    this.owner,
    this.updater,
    this.status,
    this.subStatus,
    this.execution,
    this.id,
  });

  @override
  String toString() {
    return 'WorkflowSpool[created=$created, updated=$updated, owner=$owner, updater=$updater, status=$status, subStatus=$subStatus, execution=$execution, id=$id, ]';
  }

  ///
  /// Json to Location object
  ///
  factory WorkflowSpool.fromJson(Map<String, dynamic> json) =>
      _$WorkflowSpoolFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$WorkflowSpoolToJson(this);
}
