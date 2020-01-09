import 'package:json_annotation/json_annotation.dart';
import 'QueryFilter.dart';
import 'QueryOrder.dart';
import 'QueryView.dart';

part 'Query.g.dart';

@JsonSerializable()
class Query {
  /// Lorem Ipsum
  List<QueryFilter> filters;
  
/// Lorem Ipsum
  QueryView view;
  
/// Lorem Ipsum
  List<QueryOrder> orders;
  
  
  
  Query({
  	this.filters,
  	this.view,
  	this.orders,
  });

  @override
  String toString() {
    return 'Query[filters=$filters, view=$view, orders=$orders, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory Query.fromJson(Map<String, dynamic> json) =>
      _$QueryFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$QueryToJson(this);
  
}

