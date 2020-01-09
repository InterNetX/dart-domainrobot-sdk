import 'package:json_annotation/json_annotation.dart';
import 'DomainEnvelopeSearchService.dart';

part 'DomainStudioSourceInitial.g.dart';

@JsonSerializable()
class DomainStudioSourceInitial {
  /// The services to fetch extra data from for this source
  List<DomainEnvelopeSearchService> services;
  
/// Selected tlds
  List<String> tlds;
  
  
  
  DomainStudioSourceInitial({
  	this.services,
  	this.tlds,
  });

  @override
  String toString() {
    return 'DomainStudioSourceInitial[services=$services, tlds=$tlds, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory DomainStudioSourceInitial.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioSourceInitialFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainStudioSourceInitialToJson(this);
  
}

