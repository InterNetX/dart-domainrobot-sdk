import 'package:json_annotation/json_annotation.dart';

part 'QueryView.g.dart';

@JsonSerializable()
class QueryView {
  
  int limit;
  

  int offset;
  

  bool children;
  

  DateTime from;
  

  DateTime to;
  
  
  
  QueryView({
  	this.limit,
  	this.offset,
  	this.children,
  	this.from,
  	this.to,
  });

  @override
  String toString() {
    return 'QueryView[limit=$limit, offset=$offset, children=$children, from=$from, to=$to, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory QueryView.fromJson(Map<String, dynamic> json) =>
      _$QueryViewFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$QueryViewToJson(this);
  
}

