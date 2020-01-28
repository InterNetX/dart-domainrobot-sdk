import 'package:json_annotation/json_annotation.dart';
import 'ContentTypeConstants.dart';
import 'DocumentTypeConstants.dart';
import 'TmchMark.dart';

part 'TmchMarkDocument.g.dart';

@JsonSerializable()
class TmchMarkDocument {
  /// The created date.
  DateTime created;
  
/// The updated date.
  DateTime updated;
  

  TmchMark mark;
  

  DocumentTypeConstants type;
  

  String contentName;
  

  ContentTypeConstants contentType;
  

  String content;
  
  
  
  TmchMarkDocument({
  	this.created,
  	this.updated,
  	this.mark,
  	this.type,
  	this.contentName,
  	this.contentType,
  	this.content,
  });

  @override
  String toString() {
    return 'TmchMarkDocument[created=$created, updated=$updated, mark=$mark, type=$type, contentName=$contentName, contentType=$contentType, content=$content, ]';
  }
  
  ///
  /// Json to Location object
  ///
  factory TmchMarkDocument.fromJson(Map<String, dynamic> json) =>
      _$TmchMarkDocumentFromJson(json);

  ///
  /// Location object to json
  ///
  Map<String, dynamic> toJson() => _$TmchMarkDocumentToJson(this);
  
}

