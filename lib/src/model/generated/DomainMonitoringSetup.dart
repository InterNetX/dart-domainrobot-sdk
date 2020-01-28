import 'package:json_annotation/json_annotation.dart';

part 'DomainMonitoringSetup.g.dart';

@JsonSerializable()
class DomainMonitoringSetup {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// The data
  String data;
  
  
  
  DomainMonitoringSetup({
  	this.created,
  	this.updated,
  	this.data,
  });

  @override
  String toString() {
    return 'DomainMonitoringSetup[created=$created, updated=$updated, data=$data, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory DomainMonitoringSetup.fromJson(Map<String, dynamic> json) =>
      _$DomainMonitoringSetupFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainMonitoringSetupToJson(this);
  
}

