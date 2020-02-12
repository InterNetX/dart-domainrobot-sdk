import 'package:json_annotation/json_annotation.dart';

part 'MailList.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class MailList {
  /// A list of email addresses
  List<String> emails;

  MailList({
    this.emails,
  });

  @override
  String toString() {
    return 'MailList[emails=$emails, ]';
  }

  ///
  /// Json to Location object
  ///
  factory MailList.fromJson(Map<String, dynamic> json) =>
      _$MailListFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$MailListToJson(this);
}
