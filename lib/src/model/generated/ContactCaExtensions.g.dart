// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactCaExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactCaExtensions _$ContactCaExtensionsFromJson(Map<String, dynamic> json) {
  return ContactCaExtensions(
    cpr: _$enumDecodeNullable(_$CiraCprConstantsEnumMap, json['cpr']),
    agreementVersion: (json['agreementVersion'] as num)?.toDouble(),
    originatingIp: json['originatingIp'] as String,
    officialRepresentative: json['officialRepresentative'] as String,
    trusteePercentage: (json['trusteePercentage'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$ContactCaExtensionsToJson(
        ContactCaExtensions instance) =>
    <String, dynamic>{
      'cpr': _$CiraCprConstantsEnumMap[instance.cpr],
      'agreementVersion': instance.agreementVersion,
      'originatingIp': instance.originatingIp,
      'officialRepresentative': instance.officialRepresentative,
      'trusteePercentage': instance.trusteePercentage,
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

const _$CiraCprConstantsEnumMap = {
  CiraCprConstants.CCT: 'CCT',
  CiraCprConstants.RES: 'RES',
  CiraCprConstants.CCO: 'CCO',
  CiraCprConstants.ABO: 'ABO',
  CiraCprConstants.TDM: 'TDM',
  CiraCprConstants.MAJ: 'MAJ',
  CiraCprConstants.GOV: 'GOV',
  CiraCprConstants.LGR: 'LGR',
  CiraCprConstants.TRS: 'TRS',
  CiraCprConstants.PRT: 'PRT',
  CiraCprConstants.ASS: 'ASS',
  CiraCprConstants.TRD: 'TRD',
  CiraCprConstants.PLT: 'PLT',
  CiraCprConstants.EDU: 'EDU',
  CiraCprConstants.LAM: 'LAM',
  CiraCprConstants.HOP: 'HOP',
  CiraCprConstants.INB: 'INB',
  CiraCprConstants.OMK: 'OMK',
};
