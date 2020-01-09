import 'package:json_annotation/json_annotation.dart';
import 'DomainEnvelopeSearchService.dart';

part 'DomainStudioSourceGeo.g.dart';

@JsonSerializable()
class DomainStudioSourceGeo {
  /// The services to fetch extra data from for this source
  List<DomainEnvelopeSearchService> services;
  
/// The maximum amount of fetched geo domains.
  int max;
  
  
  
  DomainStudioSourceGeo({
  	this.services,
  	this.max,
  });

  @override
  String toString() {
    return 'DomainStudioSourceGeo[services=$services, max=$max, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory DomainStudioSourceGeo.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioSourceGeoFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainStudioSourceGeoToJson(this);
  
}

