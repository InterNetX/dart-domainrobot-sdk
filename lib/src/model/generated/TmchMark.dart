import 'package:json_annotation/json_annotation.dart';
import 'BasicUser.dart';
import 'RenewStatusConstants.dart';
import 'TimePeriod.dart';
import 'TmchContact.dart';
import 'TmchMarkAddon.dart';
import 'TmchMarkComment.dart';
import 'TmchMarkDocument.dart';
import 'TmchMarkStatusConstants.dart';
import 'TmchMarkTypeConstants.dart';

part 'TmchMark.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class TmchMark {
  /// The created date.
  DateTime created;

  /// The updated date.
  DateTime updated;

  /// The owner of the object.
  BasicUser owner;

  /// The updater of the object.
  BasicUser updater;

  int id;

  TmchMarkTypeConstants type;

  String name;

  String reference;

  TmchContact holder;

  String description;

  TimePeriod period;

  List<TmchMarkDocument> documents;

  List<String> labels;

  List<TmchMarkComment> comments;

  RenewStatusConstants renew;

  TmchMarkStatusConstants status;

  DateTime payable;

  String internalComment;

  bool sent;

  bool smdInclusion;

  bool claimsNotify;

  String smdFile;

  bool orderComplete;

  bool claimsNotifyExtended;

  TmchMarkAddon extension;

  TmchMark({
    this.created,
    this.updated,
    this.owner,
    this.updater,
    this.id,
    this.type,
    this.name,
    this.reference,
    this.holder,
    this.description,
    this.period,
    this.documents,
    this.labels,
    this.comments,
    this.renew,
    this.status,
    this.payable,
    this.internalComment,
    this.sent,
    this.smdInclusion,
    this.claimsNotify,
    this.smdFile,
    this.orderComplete,
    this.claimsNotifyExtended,
    this.extension,
  });

  @override
  String toString() {
    return 'TmchMark[created=$created, updated=$updated, owner=$owner, updater=$updater, id=$id, type=$type, name=$name, reference=$reference, holder=$holder, description=$description, period=$period, documents=$documents, labels=$labels, comments=$comments, renew=$renew, status=$status, payable=$payable, internalComment=$internalComment, sent=$sent, smdInclusion=$smdInclusion, claimsNotify=$claimsNotify, smdFile=$smdFile, orderComplete=$orderComplete, claimsNotifyExtended=$claimsNotifyExtended, extension=$extension, ]';
  }

  ///
  /// Json to Location object
  ///
  factory TmchMark.fromJson(Map<String, dynamic> json) =>
      _$TmchMarkFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$TmchMarkToJson(this);
}
