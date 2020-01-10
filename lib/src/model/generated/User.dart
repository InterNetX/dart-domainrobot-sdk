import 'package:json_annotation/json_annotation.dart';
import 'AuthType.dart';
import 'BasicCustomer.dart';
import 'BasicUser.dart';
import 'Subscription.dart';
import 'TrustedApplication.dart';
import 'UserAcls.dart';
import 'UserDetails.dart';
import 'UserLock.dart';
import 'UserProfileViews.dart';
import 'VirtualNameServerGroup.dart';

part 'User.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class User {
  /// The user created date.
  DateTime created;

  /// The user updated date.
  DateTime updated;

  /// The context.
  int context;

  /// The password.
  String password;

  /// The default email.
  String defaultEmail;

  /// The status.
  int status;

  /// The substatus.
  int substatus;

  /// The users authorization method.
  AuthType authType;

  /// The user details.
  UserDetails details;

  /// The lock status of the user.
  UserLock lock;

  /// Wrapper for the user acls.
  UserAcls acls;

  /// Wrapper for the user profiles.
  UserProfileViews profiles;

  /// The ancestors of the user.
  List<BasicUser> ancestors;

  /// The customer belonging to the user.
  BasicCustomer customer;

  /// The available name server groups
  List<VirtualNameServerGroup> nameServerGroups;

  /// Wrapper for the subscriptions.
  List<Subscription> subscriptions;

  /// Holds the used applications.
  List<TrustedApplication> applications;

  /// The user name.
  String user;

  /// The language.
  String language;

  /// The parent.
  User parent;

  User({
    this.created,
    this.updated,
    this.context,
    this.password,
    this.defaultEmail,
    this.status,
    this.substatus,
    this.authType,
    this.details,
    this.lock,
    this.acls,
    this.profiles,
    this.ancestors,
    this.customer,
    this.nameServerGroups,
    this.subscriptions,
    this.applications,
    this.user,
    this.language,
    this.parent,
  });

  @override
  String toString() {
    return 'User[created=$created, updated=$updated, context=$context, password=$password, defaultEmail=$defaultEmail, status=$status, substatus=$substatus, authType=$authType, details=$details, lock=$lock, acls=$acls, profiles=$profiles, ancestors=$ancestors, customer=$customer, nameServerGroups=$nameServerGroups, subscriptions=$subscriptions, applications=$applications, user=$user, language=$language, parent=$parent, ]';
  }

  ///
  /// Json to Location object
  ///
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
