import 'package:json_annotation/json_annotation.dart';
import 'BackupMx.dart';

part 'BulkBackupMxPostRequest.g.dart';

@JsonSerializable()
class BulkBackupMxPostRequest {
  /// The objects to process
  List<BackupMx> objects;
  
/// The template for objects to process
  BackupMx template;
  
  
  
  BulkBackupMxPostRequest({
  	this.objects,
  	this.template,
  });

  @override
  String toString() {
    return 'BulkBackupMxPostRequest[objects=$objects, template=$template, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory BulkBackupMxPostRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkBackupMxPostRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkBackupMxPostRequestToJson(this);
  
}

