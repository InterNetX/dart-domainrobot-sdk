import 'package:json_annotation/json_annotation.dart';
import 'MailProxy.dart';

part 'BulkMailProxyPostRequest.g.dart';

@JsonSerializable()
class BulkMailProxyPostRequest {
  /// The objects to process
  List<MailProxy> objects;
  
/// The template for objects to process
  MailProxy template;
  
  
  
  BulkMailProxyPostRequest({
  	this.objects,
  	this.template,
  });

  @override
  String toString() {
    return 'BulkMailProxyPostRequest[objects=$objects, template=$template, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory BulkMailProxyPostRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkMailProxyPostRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkMailProxyPostRequestToJson(this);
  
}

