import 'package:json_annotation/json_annotation.dart';
import 'Query.dart';
import 'Zone.dart';

part 'BulkZoneDeleteRequest.g.dart';

@JsonSerializable()
class BulkZoneDeleteRequest {
  /// The objects to process
  List<Zone> objects;
  
/// The query to fetch the object instead of defined list
  Query query;
  
  
  
  BulkZoneDeleteRequest({
  	this.objects,
  	this.query,
  });

  @override
  String toString() {
    return 'BulkZoneDeleteRequest[objects=$objects, query=$query, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory BulkZoneDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkZoneDeleteRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkZoneDeleteRequestToJson(this);
  
}

