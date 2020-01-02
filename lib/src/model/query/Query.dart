import 'QueryFilter.dart';
import 'QueryOrder.dart';
import 'QueryView.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Query.g.dart';

@JsonSerializable()
class Query {
  List<QueryFilter> filters;
  QueryView view;
  List<QueryOrder> orders;

  Query({this.filters, this.view, this.orders});

  void addFilter(QueryFilter filter) {
    filters ??= [];
    filters.add(filter);
  }

  /*
   * Json to Location object
   */
  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$QueryToJson(this);
}
