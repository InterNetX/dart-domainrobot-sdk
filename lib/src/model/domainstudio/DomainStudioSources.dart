import 'package:json_annotation/json_annotation.dart';

import 'DomainStudioSourceGeo.dart';
import 'DomainStudioSourceInitial.dart';
import 'DomainStudioSourcePremium.dart';
import 'DomainStudioSourceRecommended.dart';
import 'DomainStudioSourceSimilar.dart';
import 'DomainStudioSourceSuggestion.dart';

part 'DomainStudioSources.g.dart';

@JsonSerializable()
class DomainStudioSources {
  DomainStudioSourceInitial initial;
  DomainStudioSourceSuggestion suggestion;
  DomainStudioSourcePremium premium;
  DomainStudioSourceGeo geo;
  DomainStudioSourceSimilar similar;
  DomainStudioSourceRecommended recommended;

  DomainStudioSources(
      {this.initial,
      this.suggestion,
      this.premium,
      this.geo,
      this.similar,
      this.recommended});

  /*
   * Json to Location object
   */
  factory DomainStudioSources.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioSourcesFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$DomainStudioSourcesToJson(this);
}
