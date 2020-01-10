import 'package:json_annotation/json_annotation.dart';

part 'QueryView.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class QueryView {
  /// Lorem Ipsum
  int limit;

  /// Lorem Ipsum
  int offset;

  /// Lorem Ipsum
  bool children;

  /// Lorem Ipsum
  DateTime from;

  /// Lorem Ipsum
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
