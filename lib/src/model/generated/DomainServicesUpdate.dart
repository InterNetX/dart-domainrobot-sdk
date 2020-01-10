import 'package:json_annotation/json_annotation.dart';
import 'Domain.dart';
import 'DomainServices.dart';

part 'DomainServicesUpdate.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DomainServicesUpdate {
  /// The name of the domain.
  List<Domain> domains;

  /// The services to add.
  DomainServices servicesAdd;

  /// The services to remove.
  DomainServices servicesRem;

  DomainServicesUpdate({
    this.domains,
    this.servicesAdd,
    this.servicesRem,
  });

  @override
  String toString() {
    return 'DomainServicesUpdate[domains=$domains, servicesAdd=$servicesAdd, servicesRem=$servicesRem, ]';
  }

  ///
  /// Json to Location object
  ///
  factory DomainServicesUpdate.fromJson(Map<String, dynamic> json) =>
      _$DomainServicesUpdateFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainServicesUpdateToJson(this);
}
