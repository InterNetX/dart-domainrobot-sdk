// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return Customer(
    number: json['number'] as int,
    client: json['client'] as String,
    group: json['group'] as int,
    name: json['name'] as String,
    organization: json['organization'] as String,
    vatNumber: json['vatNumber'] as String,
    gender: _$enumDecodeNullable(_$GenderConstantsEnumMap, json['gender']),
    title: json['title'] as String,
    addressLines:
        (json['addressLines'] as List)?.map((e) => e as String)?.toList(),
    city: json['city'] as String,
    state: json['state'] as String,
    country: json['country'] as String,
    phone: json['phone'] == null
        ? null
        : Phone.fromJson(json['phone'] as Map<String, dynamic>),
    fax: json['fax'] == null
        ? null
        : Phone.fromJson(json['fax'] as Map<String, dynamic>),
    emails: (json['emails'] as List)?.map((e) => e as String)?.toList(),
    billingEmails:
        (json['billingEmails'] as List)?.map((e) => e as String)?.toList(),
    payment: _$enumDecodeNullable(_$PaymentConstantsEnumMap, json['payment']),
    paymentMode: json['paymentMode'] as String,
    paymentCurrency: json['paymentCurrency'] as String,
    invoiceLanguage: json['invoiceLanguage'] as String,
    taxable: json['taxable'] as bool,
    card: json['card'] == null
        ? null
        : Card.fromJson(json['card'] as Map<String, dynamic>),
    contracts: (json['contracts'] as List)
        ?.map((e) => e == null
            ? null
            : CustomerContract.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    billingUsers: (json['billingUsers'] as List)
        ?.map((e) =>
            e == null ? null : BasicUser.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    account: json['account'] == null
        ? null
        : Account.fromJson(json['account'] as Map<String, dynamic>),
    clearAccount:
        _$enumDecodeNullable(_$ClearAccountPeriodEnumMap, json['clearAccount']),
    fname: json['fname'] as String,
    lname: json['lname'] as String,
    pcode: json['pcode'] as String,
    sepa: json['sepa'] == null
        ? null
        : SEPAMandate.fromJson(json['sepa'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CustomerToJson(Customer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('number', instance.number);
  writeNotNull('client', instance.client);
  writeNotNull('group', instance.group);
  writeNotNull('name', instance.name);
  writeNotNull('organization', instance.organization);
  writeNotNull('vatNumber', instance.vatNumber);
  writeNotNull('gender', _$GenderConstantsEnumMap[instance.gender]);
  writeNotNull('title', instance.title);
  writeNotNull('addressLines', instance.addressLines);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('country', instance.country);
  writeNotNull('phone', instance.phone?.toJson());
  writeNotNull('fax', instance.fax?.toJson());
  writeNotNull('emails', instance.emails);
  writeNotNull('billingEmails', instance.billingEmails);
  writeNotNull('payment', _$PaymentConstantsEnumMap[instance.payment]);
  writeNotNull('paymentMode', instance.paymentMode);
  writeNotNull('paymentCurrency', instance.paymentCurrency);
  writeNotNull('invoiceLanguage', instance.invoiceLanguage);
  writeNotNull('taxable', instance.taxable);
  writeNotNull('card', instance.card?.toJson());
  writeNotNull(
      'contracts', instance.contracts?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'billingUsers', instance.billingUsers?.map((e) => e?.toJson())?.toList());
  writeNotNull('account', instance.account?.toJson());
  writeNotNull(
      'clearAccount', _$ClearAccountPeriodEnumMap[instance.clearAccount]);
  writeNotNull('fname', instance.fname);
  writeNotNull('lname', instance.lname);
  writeNotNull('pcode', instance.pcode);
  writeNotNull('sepa', instance.sepa?.toJson());
  return val;
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$GenderConstantsEnumMap = {
  GenderConstants.MALE: 'MALE',
  GenderConstants.FEMALE: 'FEMALE',
};

const _$PaymentConstantsEnumMap = {
  PaymentConstants.PRE: 'PRE',
  PaymentConstants.POST: 'POST',
  PaymentConstants.LIVE: 'LIVE',
};

const _$ClearAccountPeriodEnumMap = {
  ClearAccountPeriod.DAY: 'DAY',
  ClearAccountPeriod.MONTH: 'MONTH',
  ClearAccountPeriod.BILL: 'BILL',
  ClearAccountPeriod.WEEK: 'WEEK',
  ClearAccountPeriod.NONE: 'NONE',
};
