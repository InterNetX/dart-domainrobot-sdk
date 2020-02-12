import 'package:json_annotation/json_annotation.dart';
import 'Domain.dart';
import 'Query.dart';

part 'BulkDomainCommentRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BulkDomainCommentRequest {
  /// The objects to process
  List<Domain> objects;

  /// The template for objects to process
  Domain template;

  /// The query to fetch the object instead of defined list
  Query query;

  BulkDomainCommentRequest({
    this.objects,
    this.template,
    this.query,
  });

  @override
  String toString() {
    return 'BulkDomainCommentRequest[objects=$objects, template=$template, query=$query, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BulkDomainCommentRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkDomainCommentRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkDomainCommentRequestToJson(this);
}
