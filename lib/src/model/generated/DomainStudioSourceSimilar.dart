import 'package:json_annotation/json_annotation.dart';
import 'DomainEnvelopeSearchService.dart';

part 'DomainStudioSourceSimilar.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DomainStudioSourceSimilar {
  /// The services to fetch extra data from for this source
  List<DomainEnvelopeSearchService> services;

  /// The maximum amount of generated similar domains.
  int max;

  DomainStudioSourceSimilar({
    this.services,
    this.max,
  });

  @override
  String toString() {
    return 'DomainStudioSourceSimilar[services=$services, max=$max, ]';
  }

  ///
  /// Json to Location object
  ///
  factory DomainStudioSourceSimilar.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioSourceSimilarFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainStudioSourceSimilarToJson(this);
}
