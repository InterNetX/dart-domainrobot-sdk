// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactAuExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactAuExtensions _$ContactAuExtensionsFromJson(Map<String, dynamic> json) {
  return ContactAuExtensions(
    eligibilityId: json['eligibilityId'] as String,
    eligibilityIdType: _$enumDecodeNullable(
        _$AuEligibilityIdTypeConstantsEnumMap, json['eligibilityIdType']),
    eligibilityName: json['eligibilityName'] as String,
    eligibilityType: _$enumDecodeNullable(
        _$AuEligibilityTypeConstantsEnumMap, json['eligibilityType']),
    policyReason: json['policyReason'] as int,
    registrantId: json['registrantId'] as String,
    registrantIdType: _$enumDecodeNullable(
        _$AuRegistrantIdTypeConstantsEnumMap, json['registrantIdType']),
    registrantName: json['registrantName'] as String,
  );
}

Map<String, dynamic> _$ContactAuExtensionsToJson(ContactAuExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eligibilityId', instance.eligibilityId);
  writeNotNull('eligibilityIdType',
      _$AuEligibilityIdTypeConstantsEnumMap[instance.eligibilityIdType]);
  writeNotNull('eligibilityName', instance.eligibilityName);
  writeNotNull('eligibilityType',
      _$AuEligibilityTypeConstantsEnumMap[instance.eligibilityType]);
  writeNotNull('policyReason', instance.policyReason);
  writeNotNull('registrantId', instance.registrantId);
  writeNotNull('registrantIdType',
      _$AuRegistrantIdTypeConstantsEnumMap[instance.registrantIdType]);
  writeNotNull('registrantName', instance.registrantName);
  return val;
}

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

const _$AuEligibilityIdTypeConstantsEnumMap = {
  AuEligibilityIdTypeConstants.ACN: 'ACN',
  AuEligibilityIdTypeConstants.ABN: 'ABN',
  AuEligibilityIdTypeConstants.VIC_BN: 'VIC_BN',
  AuEligibilityIdTypeConstants.NSW_BN: 'NSW_BN',
  AuEligibilityIdTypeConstants.SA: 'SA',
  AuEligibilityIdTypeConstants.BN: 'BN',
  AuEligibilityIdTypeConstants.NT_BN: 'NT_BN',
  AuEligibilityIdTypeConstants.WA_BN: 'WA_BN',
  AuEligibilityIdTypeConstants.TAS_BN: 'TAS_BN',
  AuEligibilityIdTypeConstants.ACT_BN: 'ACT_BN',
  AuEligibilityIdTypeConstants.QLD_BN: 'QLD_BN',
  AuEligibilityIdTypeConstants.TM: 'TM',
  AuEligibilityIdTypeConstants.OTHER: 'OTHER',
};

const _$AuEligibilityTypeConstantsEnumMap = {
  AuEligibilityTypeConstants.COMPANY: 'COMPANY',
  AuEligibilityTypeConstants.REGISTERED_BUSINESS: 'REGISTERED_BUSINESS',
  AuEligibilityTypeConstants.SOLE_TRADER: 'SOLE_TRADER',
  AuEligibilityTypeConstants.PARTNERSHIP: 'PARTNERSHIP',
  AuEligibilityTypeConstants.TRADEMARK_OWNER: 'TRADEMARK_OWNER',
  AuEligibilityTypeConstants.PENDING_TM_OWNER: 'PENDING_TM_OWNER',
  AuEligibilityTypeConstants.CITIZEN_RESIDENT: 'CITIZEN_RESIDENT',
  AuEligibilityTypeConstants.INCORPORATED_ASSOCIATION:
      'INCORPORATED_ASSOCIATION',
  AuEligibilityTypeConstants.UNINCORPORATED_ASSOCIATION:
      'UNINCORPORATED_ASSOCIATION',
  AuEligibilityTypeConstants.CLUB: 'CLUB',
  AuEligibilityTypeConstants.NON_PROFIT_ORGANISATION: 'NON_PROFIT_ORGANISATION',
  AuEligibilityTypeConstants.CHARITY: 'CHARITY',
  AuEligibilityTypeConstants.TRADE_UNION: 'TRADE_UNION',
  AuEligibilityTypeConstants.INDUSTRY_BODY: 'INDUSTRY_BODY',
  AuEligibilityTypeConstants.COMMERCIAL_STATUTORY_BODY:
      'COMMERCIAL_STATUTORY_BODY',
  AuEligibilityTypeConstants.POLITICAL_PARTY: 'POLITICAL_PARTY',
  AuEligibilityTypeConstants.RELIGIOUS_CHURCH_GROUPS: 'RELIGIOUS_CHURCH_GROUPS',
  AuEligibilityTypeConstants.OTHER: 'OTHER',
};

const _$AuRegistrantIdTypeConstantsEnumMap = {
  AuRegistrantIdTypeConstants.ACN: 'ACN',
  AuRegistrantIdTypeConstants.ABN: 'ABN',
  AuRegistrantIdTypeConstants.OTHER: 'OTHER',
};
