import 'package:dart_domainrobot_sdk/src/model/domainstudio/AbstractDomainStudioSourceConfiguration.dart';
import 'package:json_annotation/json_annotation.dart';

part 'DomainStudioSourceGeo.g.dart';

@JsonSerializable()
class DomainStudioSourceGeo extends AbstractDomainStudioSourceConfiguration {
  int max;

  DomainStudioSourceGeo({this.max, List<String> services}) : super(services);

  /*
   * Json to Location object
   */
  factory DomainStudioSourceGeo.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioSourceGeoFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$DomainStudioSourceGeoToJson(this);
}
