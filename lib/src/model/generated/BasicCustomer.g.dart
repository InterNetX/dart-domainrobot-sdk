// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BasicCustomer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicCustomer _$BasicCustomerFromJson(Map<String, dynamic> json) {
  return BasicCustomer(
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

Map<String, dynamic> _$BasicCustomerToJson(BasicCustomer instance) =>
    <String, dynamic>{
      'number': instance.number,
      'client': instance.client,
      'group': instance.group,
      'name': instance.name,
      'organization': instance.organization,
      'vatNumber': instance.vatNumber,
      'gender': _$GenderConstantsEnumMap[instance.gender],
      'title': instance.title,
      'addressLines': instance.addressLines,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'phone': instance.phone,
      'fax': instance.fax,
      'emails': instance.emails,
      'billingEmails': instance.billingEmails,
      'payment': _$PaymentConstantsEnumMap[instance.payment],
      'paymentMode': instance.paymentMode,
      'paymentCurrency': instance.paymentCurrency,
      'invoiceLanguage': instance.invoiceLanguage,
      'taxable': instance.taxable,
      'card': instance.card,
      'contracts': instance.contracts,
      'billingUsers': instance.billingUsers,
      'account': instance.account,
      'clearAccount': _$ClearAccountPeriodEnumMap[instance.clearAccount],
      'fname': instance.fname,
      'lname': instance.lname,
      'pcode': instance.pcode,
      'sepa': instance.sepa,
    };

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
