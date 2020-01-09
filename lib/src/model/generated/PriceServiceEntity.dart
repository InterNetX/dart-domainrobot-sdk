import 'package:json_annotation/json_annotation.dart';
import 'ServiceEntity.dart';

part 'PriceServiceEntity.g.dart';

@JsonSerializable()
class PriceServiceEntity {
  /// Lorem Ipum
  Map<String, Object> configuration;
  
/// Lorem Ipum
  ServiceEntity condition;
  
  
  
  PriceServiceEntity({
  	this.configuration,
  	this.condition,
  });

  @override
  String toString() {
    return 'PriceServiceEntity[configuration=$configuration, condition=$condition, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory PriceServiceEntity.fromJson(Map<String, dynamic> json) =>
      _$PriceServiceEntityFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$PriceServiceEntityToJson(this);
  
}

