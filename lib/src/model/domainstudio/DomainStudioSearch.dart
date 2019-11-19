import 'package:json_annotation/json_annotation.dart';

import 'DomainStudioSources.dart';

part 'DomainStudioSearch.g.dart';

@JsonSerializable()
class DomainStudioSearch {
  String searchToken;
  String currency;
  DomainStudioSources sources;
  bool checkPortfolio;
  String clientIp;

  DomainStudioSearch({this.searchToken, this.currency, this.sources});

  /*
   * Json to Location object
   */
  factory DomainStudioSearch.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioSearchFromJson(json);

  /*
   * Location object to json
   */
  Map<String, dynamic> toJson() => _$DomainStudioSearchToJson(this);
}
