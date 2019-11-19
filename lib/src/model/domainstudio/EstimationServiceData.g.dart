// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EstimationServiceData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EstimationServiceData _$EstimationServiceDataFromJson(
    Map<String, dynamic> json) {
  return EstimationServiceData(
    amount: (json['amount'] as num)?.toDouble(),
    currency: json['currency'] as String,
  );
}

Map<String, dynamic> _$EstimationServiceDataToJson(
        EstimationServiceData instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
    };
