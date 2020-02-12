import 'package:json_annotation/json_annotation.dart';
import 'ContactReferenceType.dart';
import 'NicMember.dart';
import 'ObjectStatus.dart';

part 'ContactReference.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ContactReference {
  /// The nic
  NicMember nic;

  /// The status
  ObjectStatus status;

  /// The contact reference type
  ContactReferenceType type;

  /// The role as contact reference type
  ContactReferenceType role;

  /// The nic reference
  String name;

  ContactReference({
    this.nic,
    this.status,
    this.type,
    this.role,
    this.name,
  });

  @override
  String toString() {
    return 'ContactReference[nic=$nic, status=$status, type=$type, role=$role, name=$name, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ContactReference.fromJson(Map<String, dynamic> json) =>
      _$ContactReferenceFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactReferenceToJson(this);
}
