import 'package:domainrobot_api/src/model/domainstudio/AbstractDomainStudioSourceConfiguration.dart';
import 'package:json_annotation/json_annotation.dart';

part 'DomainStudioSourceSimilar.g.dart';

@JsonSerializable()
class DomainStudioSourceSimilar
    extends AbstractDomainStudioSourceConfiguration {
  int max;
  List<String> tlds;

  DomainStudioSourceSimilar({this.max, this.tlds, List<String> services})
      : super(services);

  /*
   * Json to Location object
   */
  factory DomainStudioSourceSimilar.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioSourceSimilarFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$DomainStudioSourceSimilarToJson(this);
}
