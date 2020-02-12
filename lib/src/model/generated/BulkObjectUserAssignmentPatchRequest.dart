import 'package:json_annotation/json_annotation.dart';
import 'ObjectUserAssignment.dart';

part 'BulkObjectUserAssignmentPatchRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BulkObjectUserAssignmentPatchRequest {
  /// The objects to process
  List<ObjectUserAssignment> objects;

  /// The template for objects to process
  ObjectUserAssignment template;

  BulkObjectUserAssignmentPatchRequest({
    this.objects,
    this.template,
  });

  @override
  String toString() {
    return 'BulkObjectUserAssignmentPatchRequest[objects=$objects, template=$template, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BulkObjectUserAssignmentPatchRequest.fromJson(
          Map<String, dynamic> json) =>
      _$BulkObjectUserAssignmentPatchRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() =>
      _$BulkObjectUserAssignmentPatchRequestToJson(this);
}
