import 'package:dart_domainrobot_sdk/src/model/domainstudio/AbstractDomainStudioSourceConfiguration.dart';
import 'package:json_annotation/json_annotation.dart';

part 'DomainStudioSourcePremium.g.dart';

@JsonSerializable()
class DomainStudioSourcePremium
    extends AbstractDomainStudioSourceConfiguration {
  List<String> promoTlds;
  List<String> topTlds;
  int max;

  DomainStudioSourcePremium(
      {this.promoTlds, this.topTlds, this.max, List<String> services})
      : super(services);

  factory DomainStudioSourcePremium.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioSourcePremiumFromJson(json);

  Map<String, dynamic> toJson() => _$DomainStudioSourcePremiumToJson(this);
}
