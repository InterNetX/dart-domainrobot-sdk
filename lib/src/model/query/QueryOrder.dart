import 'package:json_annotation/json_annotation.dart';

part 'QueryOrder.g.dart';

@JsonSerializable()
class QueryOrder {
  String key;
  String type;
  String ins;

  QueryOrder({this.key, this.type, this.ins});

  /*
   * Json to Location object
   */
  factory QueryOrder.fromJson(Map<String, dynamic> json) =>
      _$QueryOrderFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$QueryOrderToJson(this);
}
