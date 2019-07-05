// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainRobotDomain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainRobotDomain _$DomainRobotDomainFromJson(Map<String, dynamic> json) {
  return DomainRobotDomain(
      name: json['name'] as String,
      zonec: json['zonec'] == null
          ? null
          : Contact.fromJson(json['zonec'] as Map<String, dynamic>),
      adminc: json['adminc'] == null
          ? null
          : Contact.fromJson(json['adminc'] as Map<String, dynamic>),
      ownerc: json['ownerc'] == null
          ? null
          : Contact.fromJson(json['ownerc'] as Map<String, dynamic>),
      techc: json['techc'] == null
          ? null
          : Contact.fromJson(json['techc'] as Map<String, dynamic>),
      nameservers: (json['nameservers'] as List)
          ?.map((e) =>
              e == null ? null : NameServer.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$DomainRobotDomainToJson(DomainRobotDomain instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('ownerc', instance.ownerc);
  writeNotNull('adminc', instance.adminc);
  writeNotNull('techc', instance.techc);
  writeNotNull('zonec', instance.zonec);
  writeNotNull('nameservers', instance.nameservers);
  return val;
}
