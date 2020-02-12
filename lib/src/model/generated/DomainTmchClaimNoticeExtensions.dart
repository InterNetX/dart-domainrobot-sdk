import 'package:json_annotation/json_annotation.dart';

part 'DomainTmchClaimNoticeExtensions.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DomainTmchClaimNoticeExtensions {
  /// The external refernce
  String externalReference;

  /// Date after the claim expires
  DateTime notAfter;

  /// The date of confirmation
  DateTime confirmed;

  /// The confirm ip
  String confirmIp;

  DomainTmchClaimNoticeExtensions({
    this.externalReference,
    this.notAfter,
    this.confirmed,
    this.confirmIp,
  });

  @override
  String toString() {
    return 'DomainTmchClaimNoticeExtensions[externalReference=$externalReference, notAfter=$notAfter, confirmed=$confirmed, confirmIp=$confirmIp, ]';
  }

  ///
  /// Json to Location object
  ///
  factory DomainTmchClaimNoticeExtensions.fromJson(Map<String, dynamic> json) =>
      _$DomainTmchClaimNoticeExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() =>
      _$DomainTmchClaimNoticeExtensionsToJson(this);
}
