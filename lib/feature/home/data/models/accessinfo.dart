import 'package:booklyapp/feature/home/data/models/epub.dart';

class AccessInfo {
  AccessInfo({
    required this.country,
    required this.viewability,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    required this.epub,
    required this.pdf,
    required this.webReaderLink,
    required this.accessViewStatus,
    required this.quoteSharingAllowed,
  });

  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Epub? epub;
  final Epub? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  factory AccessInfo.fromJson(Map<String, dynamic> json){
    return AccessInfo(
      country: json["country"],
      viewability: json["viewability"],
      embeddable: json["embeddable"],
      publicDomain: json["publicDomain"],
      textToSpeechPermission: json["textToSpeechPermission"],
      epub: json["epub"] == null ? null : Epub.fromJson(json["epub"]),
      pdf: json["pdf"] == null ? null : Epub.fromJson(json["pdf"]),
      webReaderLink: json["webReaderLink"],
      accessViewStatus: json["accessViewStatus"],
      quoteSharingAllowed: json["quoteSharingAllowed"],
    );
  }

}