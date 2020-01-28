import 'package:json_annotation/json_annotation.dart';
import 'ModifierConstants.dart';

part 'Modifier.g.dart';

@JsonSerializable()
class Modifier {
  /// The search pattern
  String search;
  
/// The replacement value
  String replace;
  
/// The modifiers type, e.g. NAME_SERVER
  ModifierConstants type;
  
  
  
  Modifier({
  	this.search,
  	this.replace,
  	this.type,
  });

  @override
  String toString() {
    return 'Modifier[search=$search, replace=$replace, type=$type, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory Modifier.fromJson(Map<String, dynamic> json) =>
      _$ModifierFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ModifierToJson(this);
  
}

