import 'package:json_annotation/json_annotation.dart';

part 'GenericLabelEntity.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class GenericLabelEntity {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// Lorem Ipum
  String label;

  /// The name of the contract.
  String name;

  /// The related package label of the contract
  String packageLabel;

  GenericLabelEntity({
    this.created,
    this.updated,
    this.label,
    this.name,
    this.packageLabel,
  });

  @override
  String toString() {
    return 'GenericLabelEntity[created=$created, updated=$updated, label=$label, name=$name, packageLabel=$packageLabel, ]';
  }

  ///
  /// Json to Location object
  ///
  factory GenericLabelEntity.fromJson(Map<String, dynamic> json) =>
      _$GenericLabelEntityFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$GenericLabelEntityToJson(this);
}
