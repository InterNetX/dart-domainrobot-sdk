import 'package:json_annotation/json_annotation.dart';
import 'GenericStatusConstants.dart';

part 'ContactVerificationDomain.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ContactVerificationDomain {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// the domain of the Verification
  String name;

  /// the idn domain
  String idn;

  /// the status of the domain Verification
  GenericStatusConstants status;

  /// the deactivation of the domain Verification
  DateTime deactivation;

  ContactVerificationDomain({
    this.created,
    this.updated,
    this.name,
    this.idn,
    this.status,
    this.deactivation,
  });

  @override
  String toString() {
    return 'ContactVerificationDomain[created=$created, updated=$updated, name=$name, idn=$idn, status=$status, deactivation=$deactivation, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ContactVerificationDomain.fromJson(Map<String, dynamic> json) =>
      _$ContactVerificationDomainFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactVerificationDomainToJson(this);
}
