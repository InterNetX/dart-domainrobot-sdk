import 'package:json_annotation/json_annotation.dart';

part 'CertificateHistory.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class CertificateHistory {
  /// The serialnumber of the certificate.
  String serialNumber;

  /// The revoked date of the certificate.
  DateTime revoked;

  CertificateHistory({
    this.serialNumber,
    this.revoked,
  });

  @override
  String toString() {
    return 'CertificateHistory[serialNumber=$serialNumber, revoked=$revoked, ]';
  }

  ///
  /// Json to Location object
  ///
  factory CertificateHistory.fromJson(Map<String, dynamic> json) =>
      _$CertificateHistoryFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$CertificateHistoryToJson(this);
}
