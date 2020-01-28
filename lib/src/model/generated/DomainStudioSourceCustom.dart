import 'package:json_annotation/json_annotation.dart';
import 'DomainEnvelopeSearchService.dart';

part 'DomainStudioSourceCustom.g.dart';

@JsonSerializable()
class DomainStudioSourceCustom {
  /// The services to fetch extra data from for this source
  List<DomainEnvelopeSearchService> services;
  
/// Custom list of domains
  List<String> domains;
  
  
  
  DomainStudioSourceCustom({
  	this.services,
  	this.domains,
  });

  @override
  String toString() {
    return 'DomainStudioSourceCustom[services=$services, domains=$domains, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory DomainStudioSourceCustom.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioSourceCustomFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainStudioSourceCustomToJson(this);
  
}

