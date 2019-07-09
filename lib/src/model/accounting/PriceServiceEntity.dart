import 'package:json_annotation/json_annotation.dart';

import 'ServiceEntity.dart';

part 'PriceServiceEntity.g.dart';

@JsonSerializable(includeIfNull: false)
class PriceServiceEntity {
  ServiceEntity condition;

  PriceServiceEntity({this.condition});

  /*
   * Json to Location object
   */
  factory PriceServiceEntity.fromJson(Map<String, dynamic> json) =>
      _$PriceServiceEntityFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$PriceServiceEntityToJson(this);
}
