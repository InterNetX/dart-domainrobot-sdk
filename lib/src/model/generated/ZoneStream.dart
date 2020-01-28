import 'package:json_annotation/json_annotation.dart';
import 'ResourceRecord.dart';

part 'ZoneStream.g.dart';

@JsonSerializable()
class ZoneStream {
  /// the records to add.
  List<ResourceRecord> adds;
  
/// the records to remove.
  List<ResourceRecord> rems;
  
  
  
  ZoneStream({
  	this.adds,
  	this.rems,
  });

  @override
  String toString() {
    return 'ZoneStream[adds=$adds, rems=$rems, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory ZoneStream.fromJson(Map<String, dynamic> json) =>
      _$ZoneStreamFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ZoneStreamToJson(this);
  
}

