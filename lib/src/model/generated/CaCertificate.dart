import 'package:json_annotation/json_annotation.dart';

part 'CaCertificate.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class CaCertificate {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The type of the intermediate certificate.
  String caType;

  /// The plain intermediate certificate.
  String caCertificate;

  CaCertificate({
    this.created,
    this.updated,
    this.caType,
    this.caCertificate,
  });

  @override
  String toString() {
    return 'CaCertificate[created=$created, updated=$updated, caType=$caType, caCertificate=$caCertificate, ]';
  }

  ///
  /// Json to Location object
  ///
  factory CaCertificate.fromJson(Map<String, dynamic> json) =>
      _$CaCertificateFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$CaCertificateToJson(this);
}
