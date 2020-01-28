import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'UserAcl.dart';

part 'UserAcls.g.dart';

@JsonSerializable()
class UserAcls {
  /// The user which has been effected
  BasicUser user;
  
/// The acls of the user.
  List<UserAcl> acls;
  
  
  
  UserAcls({
  	this.user,
  	this.acls,
  });

  @override
  String toString() {
    return 'UserAcls[user=$user, acls=$acls, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory UserAcls.fromJson(Map<String, dynamic> json) =>
      _$UserAclsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$UserAclsToJson(this);
  
}

