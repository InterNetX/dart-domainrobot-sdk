// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ObjectUserAssignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObjectUserAssignment _$ObjectUserAssignmentFromJson(Map<String, dynamic> json) {
  return ObjectUserAssignment(
    type: json['type'] as String,
    owner: json['owner'] == null
        ? null
        : BasicUser.fromJson(json['owner'] as Map<String, dynamic>),
    name: json['name'] as String,
    cancelation: _$enumDecodeNullable(
        _$ObjectAssignmentModeEnumMap, json['cancelation']),
    source: json['source'] == null
        ? null
        : BasicUser.fromJson(json['source'] as Map<String, dynamic>),
    target: json['target'] == null
        ? null
        : BasicUser.fromJson(json['target'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ObjectUserAssignmentToJson(
        ObjectUserAssignment instance) =>
    <String, dynamic>{
      'type': instance.type,
      'owner': instance.owner,
      'name': instance.name,
      'cancelation': _$ObjectAssignmentModeEnumMap[instance.cancelation],
      'source': instance.source,
      'target': instance.target,
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

const _$ObjectAssignmentModeEnumMap = {
  ObjectAssignmentMode.ASSIGN: 'ASSIGN',
  ObjectAssignmentMode.DELETE: 'DELETE',
};
