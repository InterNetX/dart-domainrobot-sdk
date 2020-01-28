import 'package:json_annotation/json_annotation.dart';
import 'Domain.dart';
import 'Modifier.dart';
import 'Query.dart';

part 'BulkDomainPatchRequest.g.dart';

@JsonSerializable()
class BulkDomainPatchRequest {
  /// The objects to process
  List<Domain> objects;
  
/// The template for objects to process
  Domain template;
  
/// The query to fetch the object instead of defined list
  Query query;
  
/// The modifer to apply on the objects
  List<Modifier> modifiers;
  
  
  
  BulkDomainPatchRequest({
  	this.objects,
  	this.template,
  	this.query,
  	this.modifiers,
  });

  @override
  String toString() {
    return 'BulkDomainPatchRequest[objects=$objects, template=$template, query=$query, modifiers=$modifiers, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory BulkDomainPatchRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkDomainPatchRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkDomainPatchRequestToJson(this);
  
}

