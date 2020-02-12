import 'package:json_annotation/json_annotation.dart';

part 'ContactTrademarkExtensions.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ContactTrademarkExtensions {
  /// The name.
  String name;

  /// The number.
  String number;

  /// The country.
  String country;

  /// The registration date.
  DateTime regdate;

  /// The application date.
  DateTime appdate;

  /// The office.
  String office;

  ContactTrademarkExtensions({
    this.name,
    this.number,
    this.country,
    this.regdate,
    this.appdate,
    this.office,
  });

  @override
  String toString() {
    return 'ContactTrademarkExtensions[name=$name, number=$number, country=$country, regdate=$regdate, appdate=$appdate, office=$office, ]';
  }

  ///
  /// Json to Location object
  ///
  factory ContactTrademarkExtensions.fromJson(Map<String, dynamic> json) =>
      _$ContactTrademarkExtensionsFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$ContactTrademarkExtensionsToJson(this);
}
