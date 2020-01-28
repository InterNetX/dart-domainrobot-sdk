import 'package:json_annotation/json_annotation.dart';

part 'Application.g.dart';

@JsonSerializable()
class Application {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  
/// The name of the application.
  String name;
  
/// The function codes for the application.
  List<String> functionCodes;
  
  
  
  Application({
  	this.created,
  	this.updated,
  	this.name,
  	this.functionCodes,
  });

  @override
  String toString() {
    return 'Application[created=$created, updated=$updated, name=$name, functionCodes=$functionCodes, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ApplicationToJson(this);
  
}

