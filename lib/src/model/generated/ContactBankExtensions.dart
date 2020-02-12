import 'package:json_annotation/json_annotation.dart';

part 'ContactBankExtensions.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ContactBankExtensions {
  /// The FTLD token.
  String ftldToken;

  ContactBankExtensions({
    this.ftldToken,
  });

  @override
  String toString() {
    return 'ContactBankExtensions[ftldToken=$ftldToken, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ContactBankExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactBankExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactBankExtensionsToJson(this);
}
