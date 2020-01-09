import 'package:json_annotation/json_annotation.dart';

part 'UrlEntity.g.dart';

@JsonSerializable()
class UrlEntity {
    
  UrlEntity();
  

  @override
  String toString() {
    return 'UrlEntity[]';
  }
  
  ///
  /// Json to Location object
  ///
  factory UrlEntity.fromJson(Map<String, dynamic> json) =>
      _$UrlEntityFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$UrlEntityToJson(this);
  
}

