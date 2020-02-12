import 'package:json_annotation/json_annotation.dart';
import 'BackupMx.dart';
import 'Query.dart';

part 'BulkBackupMxDeleteRequest.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BulkBackupMxDeleteRequest {
  /// The objects to process
  List<BackupMx> objects;

  /// The query to fetch the object instead of defined list
  Query query;

  BulkBackupMxDeleteRequest({
    this.objects,
    this.query,
  });

  @override
  String toString() {
    return 'BulkBackupMxDeleteRequest[objects=$objects, query=$query, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BulkBackupMxDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkBackupMxDeleteRequestFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BulkBackupMxDeleteRequestToJson(this);
}
