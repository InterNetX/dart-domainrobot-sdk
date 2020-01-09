import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'JobStatusConstants.dart';
import 'WorkflowEvent.dart';

part 'Job.g.dart';

@JsonSerializable()
class Job {
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
  
/// The events.
  List<WorkflowEvent> events;
  
/// The job subtype.
  String subType;
  
/// The job action.
  String action;
  
/// The job id.
  int id;
  
  
  
  Job({
  	this.created,
  	this.updated,
  	this.owner,
  	this.updater,
  	this.status,
  	this.subStatus,
  	this.execution,
  	this.events,
  	this.subType,
  	this.action,
  	this.id,
  });

  @override
  String toString() {
    return 'Job[created=$created, updated=$updated, owner=$owner, updater=$updater, status=$status, subStatus=$subStatus, execution=$execution, events=$events, subType=$subType, action=$action, id=$id, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory Job.fromJson(Map<String, dynamic> json) =>
      _$JobFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$JobToJson(this);
  
}

