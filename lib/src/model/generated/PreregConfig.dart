import 'package:json_annotation/json_annotation.dart';
import 'MessageTypeConstants.dart';
import 'RegistrationTypeConstants.dart';
import 'TimePeriod.dart';

part 'PreregConfig.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class PreregConfig {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  String name;

  String phase;

  DateTime confirmationStart;

  DateTime confirmationEnd;

  DateTime periodStart;

  DateTime periodEnd;

  String nicMemberLabel;

  DateTime niccomStart;

  DateTime niccomEnd;

  bool autoupdateDns;

  String category;

  String uiFields;

  RegistrationTypeConstants registrationType;

  MessageTypeConstants messageType;

  TimePeriod minPeriod;

  PreregConfig({
    this.created,
    this.updated,
    this.name,
    this.phase,
    this.confirmationStart,
    this.confirmationEnd,
    this.periodStart,
    this.periodEnd,
    this.nicMemberLabel,
    this.niccomStart,
    this.niccomEnd,
    this.autoupdateDns,
    this.category,
    this.uiFields,
    this.registrationType,
    this.messageType,
    this.minPeriod,
  });

  @override
  String toString() {
    return 'PreregConfig[created=$created, updated=$updated, name=$name, phase=$phase, confirmationStart=$confirmationStart, confirmationEnd=$confirmationEnd, periodStart=$periodStart, periodEnd=$periodEnd, nicMemberLabel=$nicMemberLabel, niccomStart=$niccomStart, niccomEnd=$niccomEnd, autoupdateDns=$autoupdateDns, category=$category, uiFields=$uiFields, registrationType=$registrationType, messageType=$messageType, minPeriod=$minPeriod, ]';
  }

  ///
  /// Json to Location object
  ///
  factory PreregConfig.fromJson(Map<String, dynamic> json) =>
      _$PreregConfigFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$PreregConfigToJson(this);
}
