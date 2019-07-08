import 'package:json_annotation/json_annotation.dart';

part 'GenericCustomer.g.dart';

@JsonSerializable(includeIfNull: false)
class GenericCustomer {
  int number;
  String client;
  String group;

  GenericCustomer({this.number, this.client, this.group});

  /*
   * Json to Location object
   */
  factory GenericCustomer.fromJson(Map<String, dynamic> json) =>
      _$GenericCustomerFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$GenericCustomerToJson(this);
}
