import 'package:json_annotation/json_annotation.dart';
import 'Account.dart';
import 'BasicUser.dart';
import 'Card.dart';
import 'ClearAccountPeriod.dart';
import 'CustomerContract.dart';
import 'GenderConstants.dart';
import 'PaymentConstants.dart';
import 'Phone.dart';
import 'SEPAMandate.dart';

part 'BasicCustomer.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BasicCustomer {
  int number;

  String client;

  int group;

  /// The name of the customer.
  String name;

  /// The name of the organization.
  String organization;

  /// The value added tax number.
  String vatNumber;

  /// The gender of the person.
  GenderConstants gender;

  /// The title of the customer
  String title;

  /// The address of the customer
  List<String> addressLines;

  /// The city of the customer.
  String city;

  /// The state of the customer.
  String state;

  /// The country of the customer.
  String country;

  /// The phone number of the customer
  String phone;

  /// The fax number.
  Phone fax;

  /// The email addresses.
  List<String> emails;

  /// The billing recipients.
  List<String> billingEmails;

  /// The payment typ of the customer.
  PaymentConstants payment;

  /// The payment mode of the customer.
  String paymentMode;

  /// The payment currency of the customer.
  String paymentCurrency;

  /// The language to use for the invoice.
  String invoiceLanguage;

  /// The taxable flag of the customer.
  bool taxable;

  /// The customers minimal credit card data if payament was post with credit card.
  Card card;

  /// The customers contracts.
  List<CustomerContract> contracts;

  /// The billing users.
  List<BasicUser> billingUsers;

  /// The account of the customer in case of prepayment or if the customer has a credit limit
  Account account;

  /// The period after the post payment account will be cleared to zero
  ClearAccountPeriod clearAccount;

  /// The first name.
  String fname;

  /// The last name.
  String lname;

  /// The postal code of the city.
  String pcode;

  /// The customers sepa mandate if payament was post with sepa.
  SEPAMandate sepa;

  BasicCustomer({
    this.number,
    this.client,
    this.group,
    this.name,
    this.organization,
    this.vatNumber,
    this.gender,
    this.title,
    this.addressLines,
    this.city,
    this.state,
    this.country,
    this.phone,
    this.fax,
    this.emails,
    this.billingEmails,
    this.payment,
    this.paymentMode,
    this.paymentCurrency,
    this.invoiceLanguage,
    this.taxable,
    this.card,
    this.contracts,
    this.billingUsers,
    this.account,
    this.clearAccount,
    this.fname,
    this.lname,
    this.pcode,
    this.sepa,
  });

  @override
  String toString() {
    return 'BasicCustomer[number=$number, client=$client, group=$group, name=$name, organization=$organization, vatNumber=$vatNumber, gender=$gender, title=$title, addressLines=$addressLines, city=$city, state=$state, country=$country, phone=$phone, fax=$fax, emails=$emails, billingEmails=$billingEmails, payment=$payment, paymentMode=$paymentMode, paymentCurrency=$paymentCurrency, invoiceLanguage=$invoiceLanguage, taxable=$taxable, card=$card, contracts=$contracts, billingUsers=$billingUsers, account=$account, clearAccount=$clearAccount, fname=$fname, lname=$lname, pcode=$pcode, sepa=$sepa, ]';
  }

  ///
  /// Json to Location object
  ///
  factory BasicCustomer.fromJson(Map<String, dynamic> json) =>
      _$BasicCustomerFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$BasicCustomerToJson(this);
}
