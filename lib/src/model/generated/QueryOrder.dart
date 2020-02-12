import 'package:json_annotation/json_annotation.dart';
import 'OrderType.dart';

part 'QueryOrder.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class QueryOrder {
  String key;

  List<String> ins;

  OrderType type;

  QueryOrder({
    this.key,
    this.ins,
    this.type,
  });

  @override
  String toString() {
    return 'QueryOrder[key=$key, ins=$ins, type=$type, ]';
  }

  ///
  /// Json to Location object
  ///
  factory QueryOrder.fromJson(Map<String, dynamic> json) =>
      _$QueryOrderFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$QueryOrderToJson(this);
}
