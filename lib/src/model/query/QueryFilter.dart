import 'package:json_annotation/json_annotation.dart';

part 'QueryFilter.g.dart';

@JsonSerializable()
class QueryFilter {

  String link;
  String key;
  String value;
  String operator;
  List<QueryFilter> filters;

  QueryFilter(
      {this.link,
        this.key,
        this.value,
        this.operator,
        this.filters});

  /*
   * Json to Location object
   */
  factory QueryFilter.fromJson(Map<String, dynamic> json) =>
      _$QueryFilterFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$QueryFilterToJson(this);
}
