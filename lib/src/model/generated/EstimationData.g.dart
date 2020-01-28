// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EstimationData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EstimationData _$EstimationDataFromJson(Map<String, dynamic> json) {
  return EstimationData(
    currency: json['currency'] as String,
    amount: (json['amount'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$EstimationDataToJson(EstimationData instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
    };
