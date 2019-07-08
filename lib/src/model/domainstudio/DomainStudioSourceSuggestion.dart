import 'package:domainrobot_api/src/model/domainstudio/AbstractDomainStudioSourceConfiguration.dart';
import 'package:json_annotation/json_annotation.dart';

part 'DomainStudioSourceSuggestion.g.dart';

@JsonSerializable()
class DomainStudioSourceSuggestion
    extends AbstractDomainStudioSourceConfiguration {
  String language;
  int max;
  int maxSldLength;
  bool useDash;
  bool useNumber;
  bool useIdn;
  List<String> tlds;

  DomainStudioSourceSuggestion(
      {this.language,
      this.max,
      this.maxSldLength,
      this.useDash,
      this.useNumber,
      this.useIdn,
      this.tlds,
      List<String> services})
      : super(services);

  factory DomainStudioSourceSuggestion.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioSourceSuggestionFromJson(json);

  Map<String, dynamic> toJson() => _$DomainStudioSourceSuggestionToJson(this);
}
