import 'package:json_annotation/json_annotation.dart';
import 'DomainEnvelopeSearchService.dart';

part 'DomainStudioSourcePremium.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DomainStudioSourcePremium {
  /// The services to fetch extra data from for this source
  List<DomainEnvelopeSearchService> services;

  /// Promo tlds
  List<String> promoTlds;

  /// Top tlds
  List<String> topTlds;

  /// The maximum amount of fetched premium and market domains.
  int max;

  DomainStudioSourcePremium({
    this.services,
    this.promoTlds,
    this.topTlds,
    this.max,
  });

  @override
  String toString() {
    return 'DomainStudioSourcePremium[services=$services, promoTlds=$promoTlds, topTlds=$topTlds, max=$max, ]';
  }

  ///
  /// Json to Location object
  ///
  factory DomainStudioSourcePremium.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioSourcePremiumFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainStudioSourcePremiumToJson(this);
}
