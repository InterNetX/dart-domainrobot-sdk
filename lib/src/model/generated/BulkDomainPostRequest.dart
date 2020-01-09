import 'package:json_annotation/json_annotation.dart';
import 'Domain.dart';

part 'BulkDomainPostRequest.g.dart';

@JsonSerializable()
class BulkDomainPostRequest {
  /// The objects to process
  List<Domain> objects;
  
/// The template for objects to process
  Domain template;
  
  
  
  BulkDomainPostRequest({
  	this.objects,
  	this.template,
  });

  @override
  String toString() {
    return 'BulkDomainPostRequest[objects=$objects, template=$template, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory BulkDomainPostRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkDomainPostRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkDomainPostRequestToJson(this);
  
}

