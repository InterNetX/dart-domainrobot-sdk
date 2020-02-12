import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'ObjectAssignmentMode.dart';

part 'ObjectUserAssignment.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ObjectUserAssignment {
  /// The type of the object.
  String type;

  /// The owner of the object.
  BasicUser owner;

  /// The object name.
  String name;

  /// The cancelation mode.
  ObjectAssignmentMode cancelation;

  /// The source owner.
  BasicUser source;

  /// The target owner.
  BasicUser target;

  ObjectUserAssignment({
    this.type,
    this.owner,
    this.name,
    this.cancelation,
    this.source,
    this.target,
  });

  @override
  String toString() {
    return 'ObjectUserAssignment[type=$type, owner=$owner, name=$name, cancelation=$cancelation, source=$source, target=$target, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ObjectUserAssignment.fromJson(Map<String, dynamic> json) =>
      _$ObjectUserAssignmentFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ObjectUserAssignmentToJson(this);
}
