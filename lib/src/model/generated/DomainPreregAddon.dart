import 'package:json_annotation/json_annotation.dart';

part 'DomainPreregAddon.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DomainPreregAddon {
  /// The Irp App Capacity.
  String irpAppCapacit;

  /// The Irp App Date.
  DateTime irpAppDate;

  /// The Irp Cc Locality.
  String irpCcLocality;

  /// The Irp Name.
  String irpName;

  /// The Irp Number.
  String irpNumber;

  /// The Irp Pvrc.
  String irpPvrc;

  /// The Irp Reg Date.
  DateTime irpRegDate;

  /// The addon update mode.
  String mode;

  /// Confirm order.
  bool confirmOrder;

  /// The external reference.
  String externalReference;

  /// The not after date.
  DateTime notAfter;

  /// The confirmed date.
  DateTime confirmed;

  /// The confirm ip.
  String confirmIp;

  /// The price class.
  String priceClass;

  DomainPreregAddon({
    this.irpAppCapacit,
    this.irpAppDate,
    this.irpCcLocality,
    this.irpName,
    this.irpNumber,
    this.irpPvrc,
    this.irpRegDate,
    this.mode,
    this.confirmOrder,
    this.externalReference,
    this.notAfter,
    this.confirmed,
    this.confirmIp,
    this.priceClass,
  });

  @override
  String toString() {
    return 'DomainPreregAddon[irpAppCapacit=$irpAppCapacit, irpAppDate=$irpAppDate, irpCcLocality=$irpCcLocality, irpName=$irpName, irpNumber=$irpNumber, irpPvrc=$irpPvrc, irpRegDate=$irpRegDate, mode=$mode, confirmOrder=$confirmOrder, externalReference=$externalReference, notAfter=$notAfter, confirmed=$confirmed, confirmIp=$confirmIp, priceClass=$priceClass, ]';
  }

  ///
  /// Json to Location object
  ///
  factory DomainPreregAddon.fromJson(Map<String, dynamic> json) =>
      _$DomainPreregAddonFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainPreregAddonToJson(this);
}
