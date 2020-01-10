import 'package:json_annotation/json_annotation.dart';

part 'SpamPolicy.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class SpamPolicy {
  bool modifySubject;

  double tagHeader;
  // range from -999.9 to 999.9//

  double spam;
  // range from -999.9 to 999.9//

  double kill;
  // range from -999.9 to 999.9//

  int quarantineDigestInterval;
  // range from 1440 to //

  SpamPolicy({
    this.modifySubject,
    this.tagHeader,
    this.spam,
    this.kill,
    this.quarantineDigestInterval,
  });

  @override
  String toString() {
    return 'SpamPolicy[modifySubject=$modifySubject, tagHeader=$tagHeader, spam=$spam, kill=$kill, quarantineDigestInterval=$quarantineDigestInterval, ]';
  }

  ///
  /// Json to Location object
  ///
  factory SpamPolicy.fromJson(Map<String, dynamic> json) =>
      _$SpamPolicyFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$SpamPolicyToJson(this);
}
