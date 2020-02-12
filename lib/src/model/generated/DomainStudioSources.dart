import 'package:json_annotation/json_annotation.dart';
import 'DomainStudioSourceCustom.dart';
import 'DomainStudioSourceGeo.dart';
import 'DomainStudioSourceInitial.dart';
import 'DomainStudioSourcePremium.dart';
import 'DomainStudioSourceSimilar.dart';
import 'DomainStudioSourceSuggestion.dart';

part 'DomainStudioSources.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DomainStudioSources {
  /// The configuration for the initial source
  DomainStudioSourceInitial initial;

  /// The configuration for the suggestion source
  DomainStudioSourceSuggestion suggestion;

  /// The configuration for the premium source
  DomainStudioSourcePremium premium;

  /// The configuration for the geo source
  DomainStudioSourceGeo geo;

  /// The configuration for the similar source
  DomainStudioSourceSimilar similar;

  /// The configuration for the recommended source
  DomainStudioSourceSimilar recommended;

  /// The configuration for the custom source
  DomainStudioSourceCustom custom;

  DomainStudioSources({
    this.initial,
    this.suggestion,
    this.premium,
    this.geo,
    this.similar,
    this.recommended,
    this.custom,
  });

  @override
  String toString() {
    return 'DomainStudioSources[initial=$initial, suggestion=$suggestion, premium=$premium, geo=$geo, similar=$similar, recommended=$recommended, custom=$custom, ]';
  }

  ///
  /// Json to Location object
  ///
  factory DomainStudioSources.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioSourcesFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainStudioSourcesToJson(this);
}
