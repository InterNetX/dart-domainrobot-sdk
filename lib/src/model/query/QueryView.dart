import 'package:json_annotation/json_annotation.dart';

part 'QueryView.g.dart';

@JsonSerializable()
class QueryView {
  int limit;
  int offset;
  bool children;
  String from;
  String to;

  QueryView({this.limit, this.offset, this.children, this.from, this.to});

  /*
   * Json to Location object
   */
  factory QueryView.fromJson(Map<String, dynamic> json) =>
      _$QueryViewFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$QueryViewToJson(this);
}
