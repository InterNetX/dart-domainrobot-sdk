import 'package:json_annotation/json_annotation.dart';

part 'Job.g.dart';

@JsonSerializable(includeIfNull: false)
class Job {
  int id;
  String created;
  String updated;
  String status;
  String execution;

  Job({this.id, this.updated, this.created, this.execution, this.status});

  /*
   * Json to Location object
   */
  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$JobToJson(this);
}
