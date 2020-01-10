import 'package:json_annotation/json_annotation.dart';

part 'ContactRuExtensions.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ContactRuExtensions {
  /// Taxpayer Identification Number (code). Mandatory for organisations which belong to the Russian Federation.
  String taxpayerIdentificationNumber;

  /// Territory-linked Taxpayer Number (kpp). Mandatory for organisations which belong to the Russian Federation.
  String territoryLinkedTaxpayerNumber;

  ContactRuExtensions({
    this.taxpayerIdentificationNumber,
    this.territoryLinkedTaxpayerNumber,
  });

  @override
  String toString() {
    return 'ContactRuExtensions[taxpayerIdentificationNumber=$taxpayerIdentificationNumber, territoryLinkedTaxpayerNumber=$territoryLinkedTaxpayerNumber, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ContactRuExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactRuExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactRuExtensionsToJson(this);
}
