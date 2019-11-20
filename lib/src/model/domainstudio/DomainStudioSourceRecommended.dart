import 'package:dart_domainrobot_sdk/src/model/domainstudio/AbstractDomainStudioSourceConfiguration.dart';
import 'package:json_annotation/json_annotation.dart';

part 'DomainStudioSourceRecommended.g.dart';

@JsonSerializable()
class DomainStudioSourceRecommended
    extends AbstractDomainStudioSourceConfiguration {
  int max;

  DomainStudioSourceRecommended({this.max, List<String> services})
      : super(services);

  /*
   * Json to Location object
   */
  factory DomainStudioSourceRecommended.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioSourceRecommendedFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$DomainStudioSourceRecommendedToJson(this);
}
