import 'package:json_annotation/json_annotation.dart';
import 'Query.dart';
import 'Zone.dart';

part 'BulkZoneCommentRequest.g.dart';

@JsonSerializable()
class BulkZoneCommentRequest {
  /// The objects to process
  List<Zone> objects;
  
/// The template for objects to process
  Zone template;
  
/// The query to fetch the object instead of defined list
  Query query;
  
  
  
  BulkZoneCommentRequest({
  	this.objects,
  	this.template,
  	this.query,
  });

  @override
  String toString() {
    return 'BulkZoneCommentRequest[objects=$objects, template=$template, query=$query, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory BulkZoneCommentRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkZoneCommentRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkZoneCommentRequestToJson(this);
  
}

