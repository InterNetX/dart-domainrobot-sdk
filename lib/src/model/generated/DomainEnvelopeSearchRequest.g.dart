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
    DomainEnvelopeSearchRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('searchToken', instance.searchToken);
  writeNotNull('currency', instance.currency);
  writeNotNull('debug', instance.debug);
  writeNotNull('checkPortfolio', instance.checkPortfolio);
  writeNotNull('sources', instance.sources?.toJson());
  writeNotNull('clientIp', instance.clientIp);
  return val;
}
