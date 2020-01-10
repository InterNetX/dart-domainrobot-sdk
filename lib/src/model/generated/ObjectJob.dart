import 'package:json_annotation/json_annotation.dart';
import 'Job.dart';
import 'ResponseObject.dart';

part 'ObjectJob.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ObjectJob {
  /// The related job.
  Job job;

  /// The object of the job or notify.
  ResponseObject object;

  ObjectJob({
    this.job,
    this.object,
  });

  @override
  String toString() {
    return 'ObjectJob[job=$job, object=$object, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ObjectJob.fromJson(Map<String, dynamic> json) =>
      _$ObjectJobFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ObjectJobToJson(this);
}
