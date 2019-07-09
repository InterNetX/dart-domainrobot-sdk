import 'package:json_annotation/json_annotation.dart';

part 'ServiceEntity.g.dart';

@JsonSerializable(includeIfNull: false)
class ServiceEntity {
  String created;
  String updated;
  String label;

  ServiceEntity({this.created, this.updated, this.label});

  /*
   * Json to Location object
   */
  factory ServiceEntity.fromJson(Map<String, dynamic> json) =>
      _$ServiceEntityFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$ServiceEntityToJson(this);
}
