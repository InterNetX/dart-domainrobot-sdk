// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TrustedApplicationFunctions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrustedApplicationFunctions _$TrustedApplicationFunctionsFromJson(
    Map<String, dynamic> json) {
  return TrustedApplicationFunctions(
    functionCodes:
        (json['functionCodes'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$TrustedApplicationFunctionsToJson(
        TrustedApplicationFunctions instance) =>
    <String, dynamic>{
      'functionCodes': instance.functionCodes,
    };
