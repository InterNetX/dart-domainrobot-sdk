import 'package:json_annotation/json_annotation.dart';
import 'ConditionType.dart';
import 'ModelOperator.dart';

part 'QueryFilter.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class QueryFilter {
  /// Lorem Ipsum
  String key;

  /// Lorem Ipsum
  String value;

  /// Lorem Ipsum
  ModelOperator operator_;

  /// Lorem Ipsum
  ConditionType link;

  /// Lorem Ipsum
  List<QueryFilter> filters;

  QueryFilter({
    this.key,
    this.value,
    this.operator_,
    this.link,
    this.filters,
  });

  @override
  String toString() {
    return 'QueryFilter[key=$key, value=$value, operator_=$operator_, link=$link, filters=$filters, ]';
  }

  ///
  /// Json to Location object
  ///
  factory QueryFilter.fromJson(Map<String, dynamic> json) =>
      _$QueryFilterFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$QueryFilterToJson(this);
}
