import 'package:json_annotation/json_annotation.dart';

part 'ResourceRecord.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ResourceRecord {
  /// The name of the record.
  String name;

  /// TTL of the record (Optionally if not set then Default SOA TTL is used)
  int ttl;

  /// The type of the record, e.g. A
  String type;

  /// The value of the record.
  String value;

  /// Preference of the record, need for some record types e.g. MX
  int pref;
  //enum prefEnum {  };

  ResourceRecord({
    this.name,
    this.ttl,
    this.type,
    this.value,
    this.pref,
  });

  @override
  String toString() {
    return 'ResourceRecord[name=$name, ttl=$ttl, type=$type, value=$value, pref=$pref, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ResourceRecord.fromJson(Map<String, dynamic> json) =>
      _$ResourceRecordFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ResourceRecordToJson(this);
}
