import 'package:domainrobot_api/src/model/domainstudio/AbstractDomainStudioSourceConfiguration.dart';
import 'package:json_annotation/json_annotation.dart';

part 'DomainStudioSourceInitial.g.dart';

@JsonSerializable()
class DomainStudioSourceInitial
    extends AbstractDomainStudioSourceConfiguration {
  List<String> tlds;

  DomainStudioSourceInitial({this.tlds, List<String> services})
      : super(services);

  factory DomainStudioSourceInitial.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioSourceInitialFromJson(json);

  Map<String, dynamic> toJson() => _$DomainStudioSourceInitialToJson(this);
}
