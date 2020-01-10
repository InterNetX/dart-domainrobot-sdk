// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContactLuxeExtensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactLuxeExtensions _$ContactLuxeExtensionsFromJson(
    Map<String, dynamic> json) {
  return ContactLuxeExtensions(
    walletAddress: json['walletAddress'] as String,
  );
}

Map<String, dynamic> _$ContactLuxeExtensionsToJson(
    ContactLuxeExtensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('walletAddress', instance.walletAddress);
  return val;
}
