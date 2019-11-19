// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainRobotTimePeriod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainRobotTimePeriod _$DomainRobotTimePeriodFromJson(
    Map<String, dynamic> json) {
  return DomainRobotTimePeriod(
    period: json['period'] as int,
    unit: json['unit'] as String,
  );
}

Map<String, dynamic> _$DomainRobotTimePeriodToJson(
        DomainRobotTimePeriod instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'period': instance.period,
    };
