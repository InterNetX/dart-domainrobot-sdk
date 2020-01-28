import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';

part 'VhostCertificate.g.dart';

@JsonSerializable()
class VhostCertificate {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// The owner of the object.
  BasicUser owner;
  
/// The updater of the object.
  BasicUser updater;
  
  
  
  VhostCertificate({
  	this.created,
  	this.updated,
  	this.owner,
  	this.updater,
  });

  @override
  String toString() {
    return 'VhostCertificate[created=$created, updated=$updated, owner=$owner, updater=$updater, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory VhostCertificate.fromJson(Map<String, dynamic> json) =>
      _$VhostCertificateFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$VhostCertificateToJson(this);
  
}

