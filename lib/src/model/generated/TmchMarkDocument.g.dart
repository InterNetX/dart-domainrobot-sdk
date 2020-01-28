// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TmchMarkDocument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TmchMarkDocument _$TmchMarkDocumentFromJson(Map<String, dynamic> json) {
  return TmchMarkDocument(
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    mark: json['mark'] == null
        ? null
        : TmchMark.fromJson(json['mark'] as Map<String, dynamic>),
    type: _$enumDecodeNullable(_$DocumentTypeConstantsEnumMap, json['type']),
    contentName: json['contentName'] as String,
    contentType: _$enumDecodeNullable(
        _$ContentTypeConstantsEnumMap, json['contentType']),
    content: json['content'] as String,
  );
}

Map<String, dynamic> _$TmchMarkDocumentToJson(TmchMarkDocument instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'mark': instance.mark,
      'type': _$DocumentTypeConstantsEnumMap[instance.type],
      'contentName': instance.contentName,
      'contentType': _$ContentTypeConstantsEnumMap[instance.contentType],
      'content': instance.content,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$DocumentTypeConstantsEnumMap = {
  DocumentTypeConstants.TM_LICENSEE_DECL: 'TM_LICENSEE_DECL',
  DocumentTypeConstants.TM_ASSIGNEE_DECL: 'TM_ASSIGNEE_DECL',
  DocumentTypeConstants.TM_OTHER: 'TM_OTHER',
  DocumentTypeConstants.DECL_PROOF_OF_USE_ONE_SAMPLE:
      'DECL_PROOF_OF_USE_ONE_SAMPLE',
  DocumentTypeConstants.PROOF_OF_USE_OTHER: 'PROOF_OF_USE_OTHER',
  DocumentTypeConstants.COPY_OF_COURT_ORDER: 'COPY_OF_COURT_ORDER',
  DocumentTypeConstants.TMCH_AGENT_AUTHORISATION_FORM:
      'TMCH_AGENT_AUTHORISATION_FORM',
  DocumentTypeConstants.TM_OTHER_COPY_OF_TM_CERTIFICATE:
      'TM_OTHER_COPY_OF_TM_CERTIFICATE',
  DocumentTypeConstants.TM_OTHER_COPY_OF_RENEWAL_REQUEST:
      'TM_OTHER_COPY_OF_RENEWAL_REQUEST',
  DocumentTypeConstants.TM_OTHER_COPY_OF_TREATY_OR_STATUTE:
      'TM_OTHER_COPY_OF_TREATY_OR_STATUTE',
  DocumentTypeConstants.TM_OTHER_COPY_OF_CERTIFICATE:
      'TM_OTHER_COPY_OF_CERTIFICATE',
};

const _$ContentTypeConstantsEnumMap = {
  ContentTypeConstants.PDF: 'PDF',
  ContentTypeConstants.JPG: 'JPG',
};
