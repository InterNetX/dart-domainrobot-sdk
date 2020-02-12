import 'package:json_annotation/json_annotation.dart';
import 'ACLRestriction.dart';
import 'BasicUser.dart';

part 'UserAcl.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class UserAcl {
  /// The function code to restrict
  String functionCode;

  /// The none locked children
  List<BasicUser> children;

  /// The children lock
  bool childrenLocked;

  /// The user lock
  bool userLocked;

  /// The current active lock for the user
  bool effective;

  /// Children to remove from the exception list
  List<BasicUser> childrenRem;

  /// Children to add to the exception list
  List<BasicUser> childrenAdd;

  /// The human readable restriction mode
  ACLRestriction restriction;

  UserAcl({
    this.functionCode,
    this.children,
    this.childrenLocked,
    this.userLocked,
    this.effective,
    this.childrenRem,
    this.childrenAdd,
    this.restriction,
  });

  @override
  String toString() {
    return 'UserAcl[functionCode=$functionCode, children=$children, childrenLocked=$childrenLocked, userLocked=$userLocked, effective=$effective, childrenRem=$childrenRem, childrenAdd=$childrenAdd, restriction=$restriction, ]';
  }

  ///
  /// Json to Location object
  ///
  factory UserAcl.fromJson(Map<String, dynamic> json) =>
      _$UserAclFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$UserAclToJson(this);
}
