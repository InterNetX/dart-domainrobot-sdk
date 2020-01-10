import 'package:json_annotation/json_annotation.dart';
import 'DomainEnvelopeSearchService.dart';

part 'DomainStudioSourceSuggestion.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DomainStudioSourceSuggestion {
  /// The services to fetch extra data from for this source
  List<DomainEnvelopeSearchService> services;

  /// Suggestion language
  String language;

  /// Maximum fetched suggested domains
  int max;

  /// Maximum sld length for suggested domains
  int maxSldLength;

  /// Suggested domains with dash
  bool useDash;

  /// Suggested domains with numbers
  bool useNumber;

  /// Suggested domains with idn
  bool useIdn;

  /// Selected tlds
  List<String> tlds;

  DomainStudioSourceSuggestion({
    this.services,
    this.language,
    this.max,
    this.maxSldLength,
    this.useDash,
    this.useNumber,
    this.useIdn,
    this.tlds,
  });

  @override
  String toString() {
    return 'DomainStudioSourceSuggestion[services=$services, language=$language, max=$max, maxSldLength=$maxSldLength, useDash=$useDash, useNumber=$useNumber, useIdn=$useIdn, tlds=$tlds, ]';
  }

  ///
  /// Json to Location object
  ///
  factory DomainStudioSourceSuggestion.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioSourceSuggestionFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainStudioSourceSuggestionToJson(this);
}
