import 'package:json_annotation/json_annotation.dart';

part 'ServiceEntity.g.dart';

@JsonSerializable()
class ServiceEntity {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// Lorem Ipum
  String label;
  
  
  
  ServiceEntity({
  	this.created,
  	this.updated,
  	this.label,
  });

  @override
  String toString() {
    return 'ServiceEntity[created=$created, updated=$updated, label=$label, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ServiceEntity.fromJson(Map<String, dynamic> json) =>
      _$ServiceEntityFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ServiceEntityToJson(this);
  
}

