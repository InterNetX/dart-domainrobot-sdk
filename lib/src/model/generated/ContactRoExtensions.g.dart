// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactRoExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactRoExtensions _$ContactRoExtensionsFromJson(Map<String, dynamic> json) {
  return ContactRoExtensions(
    personType: _$enumDecodeNullable(
        _$RoPersonTypeConstantsEnumMap, json['personType']),
  );
}

Map<String, dynamic> _$ContactRoExtensionsToJson(ContactRoExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'personType', _$RoPersonTypeConstantsEnumMap[instance.personType]);
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

const _$RoPersonTypeConstantsEnumMap = {
  RoPersonTypeConstants.P: 'P',
  RoPersonTypeConstants.AP: 'AP',
  RoPersonTypeConstants.NC: 'NC',
  RoPersonTypeConstants.C: 'C',
  RoPersonTypeConstants.GI: 'GI',
  RoPersonTypeConstants.PI: 'PI',
  RoPersonTypeConstants.O: 'O',
};
