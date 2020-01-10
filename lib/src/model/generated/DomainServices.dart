import 'package:json_annotation/json_annotation.dart';
import 'BackupMx.dart';
import 'DomainMonitoring.dart';
import 'MailProxy.dart';
import 'Redirect.dart';

part 'DomainServices.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DomainServices {
  /// Removes pending services like BackupMX and MailProxy.
  List<BackupMx> backupMx;

  /// Removes pending services like BackupMX and MailProxy.
  List<MailProxy> mailProxy;

  /// Removes pending services like BackupMX and MailProxy.
  List<Redirect> redirect;

  /// Removes pending services like BackupMX and MailProxy.
  List<DomainMonitoring> domainMonitoring;

  DomainServices({
    this.backupMx,
    this.mailProxy,
    this.redirect,
    this.domainMonitoring,
  });

  @override
  String toString() {
    return 'DomainServices[backupMx=$backupMx, mailProxy=$mailProxy, redirect=$redirect, domainMonitoring=$domainMonitoring, ]';
  }

  ///
  /// Json to Location object
  ///
  factory DomainServices.fromJson(Map<String, dynamic> json) =>
      _$DomainServicesFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$DomainServicesToJson(this);
}
