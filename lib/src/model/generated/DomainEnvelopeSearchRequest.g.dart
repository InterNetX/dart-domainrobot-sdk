// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainEnvelopeSearchRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainEnvelopeSearchRequest _$DomainEnvelopeSearchRequestFromJson(
    Map<String, dynamic> json) {
  return DomainEnvelopeSearchRequest(
    searchToken: json['searchToken'] as String,
    currency: json['currency'] as String,
    debug: json['debug'] as bool,
    checkPortfolio: json['checkPortfolio'] as bool,
    sources: json['sources'] == null
        ? null
        : DomainStudioSources.fromJson(json['sources'] as Map<String, dynamic>),
    clientIp: json['clientIp'] as String,
  );
}

Map<String, dynamic> _$DomainEnvelopeSearchRequestToJson(
        DomainEnvelopeSearchRequest instance) =>
    <String, dynamic>{
      'searchToken': instance.searchToken,
      'currency': instance.currency,
      'debug': instance.debug,
      'checkPortfolio': instance.checkPortfolio,
      'sources': instance.sources,
      'clientIp': instance.clientIp,
    };
