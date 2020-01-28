import 'package:json_annotation/json_annotation.dart';
import 'DomainPrereg.dart';
import 'Query.dart';

part 'BulkDomainPreregDeleteRequest.g.dart';

@JsonSerializable()
class BulkDomainPreregDeleteRequest {
  /// The objects to process
  List<DomainPrereg> objects;
  
/// The query to fetch the object instead of defined list
  Query query;
  
  
  
  BulkDomainPreregDeleteRequest({
  	this.objects,
  	this.query,
  });

  @override
  String toString() {
    return 'BulkDomainPreregDeleteRequest[objects=$objects, query=$query, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory BulkDomainPreregDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkDomainPreregDeleteRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkDomainPreregDeleteRequestToJson(this);
  
}

