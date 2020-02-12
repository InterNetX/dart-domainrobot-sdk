import 'package:json_annotation/json_annotation.dart';
import 'DomainStudioSources.dart';

part 'DomainEnvelopeSearchRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DomainEnvelopeSearchRequest {
  /// Domain search token
  String searchToken;

  /// The currency for every price lookup
  String currency;

  /// Activates debugging
  bool debug;

  /// Activates the check for each domain whether the user already owns it.
  bool checkPortfolio;

  /// Wrapper for the configuration for each source
  DomainStudioSources sources;

  /// The ip of the client
  String clientIp;

  DomainEnvelopeSearchRequest({
    this.searchToken,
    this.currency,
    this.debug,
    this.checkPortfolio,
    this.sources,
    this.clientIp,
  });

  @override
  String toString() {
    return 'DomainEnvelopeSearchRequest[searchToken=$searchToken, currency=$currency, debug=$debug, checkPortfolio=$checkPortfolio, sources=$sources, clientIp=$clientIp, ]';
  }

  ///
  /// Json to Location object
  ///
  factory DomainEnvelopeSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$DomainEnvelopeSearchRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainEnvelopeSearchRequestToJson(this);
}
