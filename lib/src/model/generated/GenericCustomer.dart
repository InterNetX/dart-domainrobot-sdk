import 'package:json_annotation/json_annotation.dart';

part 'GenericCustomer.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class GenericCustomer {
  /// Lorem Ipsum
  int number;

  /// Lorem Ipsum
  String client;

  /// Lorem Ipsum
  int group;

  GenericCustomer({
    this.number,
    this.client,
    this.group,
  });

  @override
  String toString() {
    return 'GenericCustomer[number=$number, client=$client, group=$group, ]';
  }

  ///
  /// Json to Location object
  ///
  factory GenericCustomer.fromJson(Map<String, dynamic> json) =>
      _$GenericCustomerFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$GenericCustomerToJson(this);
}
