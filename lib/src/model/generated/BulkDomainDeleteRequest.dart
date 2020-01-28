import 'package:json_annotation/json_annotation.dart';
import 'Domain.dart';
import 'Query.dart';

part 'BulkDomainDeleteRequest.g.dart';

@JsonSerializable()
class BulkDomainDeleteRequest {
  /// The objects to process
  List<Domain> objects;
  
/// The query to fetch the object instead of defined list
  Query query;
  
  
  
  BulkDomainDeleteRequest({
  	this.objects,
  	this.query,
  });

  @override
  String toString() {
    return 'BulkDomainDeleteRequest[objects=$objects, query=$query, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory BulkDomainDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkDomainDeleteRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkDomainDeleteRequestToJson(this);
  
}

