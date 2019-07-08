import 'package:json_annotation/json_annotation.dart';

import 'DomainStudioServices.dart';
import 'DomainStudioSource.dart';

part 'DomainStudioDomain.g.dart';

@JsonSerializable()
class DomainStudioDomain {
  String domain;
  String idn;
  DomainStudioSource source;
  DomainStudioServices services;

  DomainStudioDomain({this.domain, this.idn, this.source, this.services});

  factory DomainStudioDomain.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioDomainFromJson(json);

  Map<String, dynamic> toJson() => _$DomainStudioDomainToJson(this);
}
