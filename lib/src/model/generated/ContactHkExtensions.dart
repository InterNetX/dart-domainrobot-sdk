import 'package:json_annotation/json_annotation.dart';
import 'HkDocumentTypeConstants.dart';

part 'ContactHkExtensions.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ContactHkExtensions {
  /// The document types.
  HkDocumentTypeConstants documentType;

  /// Additional descriptions for OTHIDV and OTHORG.
  String others;

  /// Document number.
  String documentNumber;

  /// Country of licensure.
  String documentOrigin;

  /// Is the person 18 years of age or older. For Person only.
  bool above18;

  /// The industry types.
  String industryType;

  ContactHkExtensions({
    this.documentType,
    this.others,
    this.documentNumber,
    this.documentOrigin,
    this.above18,
    this.industryType,
  });

  @override
  String toString() {
    return 'ContactHkExtensions[documentType=$documentType, others=$others, documentNumber=$documentNumber, documentOrigin=$documentOrigin, above18=$above18, industryType=$industryType, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ContactHkExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactHkExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactHkExtensionsToJson(this);
}
