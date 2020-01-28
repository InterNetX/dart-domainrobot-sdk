import 'package:json_annotation/json_annotation.dart';
import 'DomainStudioDomainSource.dart';
import 'DomainStudioService.dart';

part 'DomainEnvelope.g.dart';

@JsonSerializable()
class DomainEnvelope {
  /// The domain
  String domain;
  
/// The unicode domain name
  String idn;
  
/// Source
  DomainStudioDomainSource source;
  
/// Source
  DomainStudioService services;
  
/// Defines if the user already owns this domain.
  bool debugTime;
  
  
  
  DomainEnvelope({
  	this.domain,
  	this.idn,
  	this.source,
  	this.services,
  	this.debugTime,
  });

  @override
  String toString() {
    return 'DomainEnvelope[domain=$domain, idn=$idn, source=$source, services=$services, debugTime=$debugTime, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory DomainEnvelope.fromJson(Map<String, dynamic> json) =>
      _$DomainEnvelopeFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainEnvelopeToJson(this);
  
}

