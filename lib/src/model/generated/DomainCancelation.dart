import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'CancelationTypeConstants.dart';
import 'ExecutionTypeConstants.dart';
import 'RegistryStatusConstants.dart';

part 'DomainCancelation.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DomainCancelation {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The owner of the object.
  BasicUser owner;

  /// The updater of the object.
  BasicUser updater;

  String domain;

  /// The date of the execution. Only necessary when ExecutionType equals DATE.
  DateTime registryWhen;

  String gainingRegistrar;

  bool disconnect;

  /// Some remarks
  String notice;

  int logId;

  RegistryStatusConstants registryStatus;

  /// The cancelation type. TRANSIT is only possible for certain TLDs.
  CancelationTypeConstants type;

  /// The execution type.
  ExecutionTypeConstants execution;

  DomainCancelation({
    this.created,
    this.updated,
    this.owner,
    this.updater,
    this.domain,
    this.registryWhen,
    this.gainingRegistrar,
    this.disconnect,
    this.notice,
    this.logId,
    this.registryStatus,
    this.type,
    this.execution,
  });

  @override
  String toString() {
    return 'DomainCancelation[created=$created, updated=$updated, owner=$owner, updater=$updater, domain=$domain, registryWhen=$registryWhen, gainingRegistrar=$gainingRegistrar, disconnect=$disconnect, notice=$notice, logId=$logId, registryStatus=$registryStatus, type=$type, execution=$execution, ]';
  }

  ///
  /// Json to Location object
  ///
  factory DomainCancelation.fromJson(Map<String, dynamic> json) =>
      _$DomainCancelationFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainCancelationToJson(this);
}
