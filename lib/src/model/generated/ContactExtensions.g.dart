// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactExtensions _$ContactExtensionsFromJson(Map<String, dynamic> json) {
  return ContactExtensions(
    aero: json['aero'] == null
        ? null
        : ContactAeroExtensions.fromJson(json['aero'] as Map<String, dynamic>),
    au: json['au'] == null
        ? null
        : ContactAuExtensions.fromJson(json['au'] as Map<String, dynamic>),
    cat: json['cat'] == null
        ? null
        : ContactCatExtensions.fromJson(json['cat'] as Map<String, dynamic>),
    jobs: json['jobs'] == null
        ? null
        : ContactJobsExtensions.fromJson(json['jobs'] as Map<String, dynamic>),
    it: json['it'] == null
        ? null
        : ContactItExtensions.fromJson(json['it'] as Map<String, dynamic>),
    jp: json['jp'] == null
        ? null
        : ContactJpExtensions.fromJson(json['jp'] as Map<String, dynamic>),
    xxx: json['xxx'] == null
        ? null
        : ContactXxxExtensions.fromJson(json['xxx'] as Map<String, dynamic>),
    hk: json['hk'] == null
        ? null
        : ContactHkExtensions.fromJson(json['hk'] as Map<String, dynamic>),
    bank: json['bank'] == null
        ? null
        : ContactBankExtensions.fromJson(json['bank'] as Map<String, dynamic>),
    swiss: json['swiss'] == null
        ? null
        : ContactSwissExtensions.fromJson(
            json['swiss'] as Map<String, dynamic>),
    ru: json['ru'] == null
        ? null
        : ContactRuExtensions.fromJson(json['ru'] as Map<String, dynamic>),
    uk: json['uk'] == null
        ? null
        : ContactUkExtensions.fromJson(json['uk'] as Map<String, dynamic>),
    ca: json['ca'] == null
        ? null
        : ContactCaExtensions.fromJson(json['ca'] as Map<String, dynamic>),
    ro: json['ro'] == null
        ? null
        : ContactRoExtensions.fromJson(json['ro'] as Map<String, dynamic>),
    barcelona: json['barcelona'] == null
        ? null
        : ContactBarcelonaExtensions.fromJson(
            json['barcelona'] as Map<String, dynamic>),
    general: json['general'] == null
        ? null
        : ContactGeneralExtensions.fromJson(
            json['general'] as Map<String, dynamic>),
    nz: json['nz'] == null
        ? null
        : ContactNzExtensions.fromJson(json['nz'] as Map<String, dynamic>),
    sport: json['sport'] == null
        ? null
        : ContactSportExtensions.fromJson(
            json['sport'] as Map<String, dynamic>),
    luxe: json['luxe'] == null
        ? null
        : ContactLuxeExtensions.fromJson(json['luxe'] as Map<String, dynamic>),
    madrid: json['madrid'] == null
        ? null
        : ContactMadridExtensions.fromJson(
            json['madrid'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ContactExtensionsToJson(ContactExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('aero', instance.aero?.toJson());
  writeNotNull('au', instance.au?.toJson());
  writeNotNull('cat', instance.cat?.toJson());
  writeNotNull('jobs', instance.jobs?.toJson());
  writeNotNull('it', instance.it?.toJson());
  writeNotNull('jp', instance.jp?.toJson());
  writeNotNull('xxx', instance.xxx?.toJson());
  writeNotNull('hk', instance.hk?.toJson());
  writeNotNull('bank', instance.bank?.toJson());
  writeNotNull('swiss', instance.swiss?.toJson());
  writeNotNull('ru', instance.ru?.toJson());
  writeNotNull('uk', instance.uk?.toJson());
  writeNotNull('ca', instance.ca?.toJson());
  writeNotNull('ro', instance.ro?.toJson());
  writeNotNull('barcelona', instance.barcelona?.toJson());
  writeNotNull('general', instance.general?.toJson());
  writeNotNull('nz', instance.nz?.toJson());
  writeNotNull('sport', instance.sport?.toJson());
  writeNotNull('luxe', instance.luxe?.toJson());
  writeNotNull('madrid', instance.madrid?.toJson());
  return val;
}
