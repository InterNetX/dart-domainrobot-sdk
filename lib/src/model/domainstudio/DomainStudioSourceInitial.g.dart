// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainStudioSourceInitial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainStudioSourceInitial _$DomainStudioSourceInitialFromJson(
    Map<String, dynamic> json) {
  return DomainStudioSourceInitial(
      tlds: (json['tlds'] as List)?.map((e) => e as String)?.toList(),
      services: (json['services'] as List)?.map((e) => e as String)?.toList());
}

Map<String, dynamic> _$DomainStudioSourceInitialToJson(
        DomainStudioSourceInitial instance) =>
    <String, dynamic>{'services': instance.services, 'tlds': instance.tlds};
