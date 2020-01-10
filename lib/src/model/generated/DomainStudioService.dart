import 'package:json_annotation/json_annotation.dart';
import 'EstimationServiceData.dart';
import 'PriceServiceData.dart';
import 'WhoisServiceData.dart';

part 'DomainStudioService.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DomainStudioService {
  /// The data for the whois service
  WhoisServiceData whois;

  /// The data for the price service
  PriceServiceData price;

  /// The data for the estimation service
  EstimationServiceData estimation;

  DomainStudioService({
    this.whois,
    this.price,
    this.estimation,
  });

  @override
  String toString() {
    return 'DomainStudioService[whois=$whois, price=$price, estimation=$estimation, ]';
  }

  ///
  /// Json to Location object
  ///
  factory DomainStudioService.fromJson(Map<String, dynamic> json) =>
      _$DomainStudioServiceFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainStudioServiceToJson(this);
}
