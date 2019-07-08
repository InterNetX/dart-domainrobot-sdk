import 'package:json_annotation/json_annotation.dart';

import 'EstimationService.dart';
import 'PriceService.dart';
import 'WhoisService.dart';

part 'DomainStudioServices.g.dart';

@JsonSerializable()
class DomainStudioServices {
  WhoisService whois;

  PriceService price;

  EstimationService estimation;

  DomainStudioServices({this.whois, this.price, this.estimation});

  factory DomainStudioServices.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioServicesFromJson(json);

  Map<String, dynamic> toJson() => _$DomainStudioServicesToJson(this);
}
