// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserAcl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAcl _$UserAclFromJson(Map<String, dynamic> json) {
  return UserAcl(
    functionCode: json['functionCode'] as String,
    children: (json['children'] as List)
        ?.map((e) =>
            e == null ? null : BasicUser.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    childrenLocked: json['childrenLocked'] as bool,
    userLocked: json['userLocked'] as bool,
    effective: json['effective'] as bool,
    childrenRem: (json['childrenRem'] as List)
        ?.map((e) =>
            e == null ? null : BasicUser.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    childrenAdd: (json['childrenAdd'] as List)
        ?.map((e) =>
            e == null ? null : BasicUser.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    restriction:
        _$enumDecodeNullable(_$ACLRestrictionEnumMap, json['restriction']),
  );
}

Map<String, dynamic> _$UserAclToJson(UserAcl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('functionCode', instance.functionCode);
  writeNotNull(
      'children', instance.children?.map((e) => e?.toJson())?.toList());
  writeNotNull('childrenLocked', instance.childrenLocked);
  writeNotNull('userLocked', instance.userLocked);
  writeNotNull('effective', instance.effective);
  writeNotNull(
      'childrenRem', instance.childrenRem?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'childrenAdd', instance.childrenAdd?.map((e) => e?.toJson())?.toList());
  writeNotNull('restriction', _$ACLRestrictionEnumMap[instance.restriction]);
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

const _$ACLRestrictionEnumMap = {
  ACLRestriction.USER_LOCKED: 'USER_LOCKED',
  ACLRestriction.CHILDREN_LOCKED: 'CHILDREN_LOCKED',
  ACLRestriction.PARENT_LOCK: 'PARENT_LOCK',
  ACLRestriction.NOT_LOCKED: 'NOT_LOCKED',
};
