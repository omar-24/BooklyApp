import 'package:booklyapp/feature/home/data/models/imagelinks.dart';
import 'package:booklyapp/feature/home/data/models/industryIdentifier.dart';
import 'package:booklyapp/feature/home/data/models/panelizationSummary.dart';
import 'package:booklyapp/feature/home/data/models/readingModes.dart';

class VolumeInfo {
  VolumeInfo({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printedPageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  final String? title;
  final List<String> authors;
  final String? publisher;
  final DateTime? publishedDate;
  final String? description;
  final List<IndustryIdentifier> industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final int? printedPageCount;
  final String? printType;
  final List<String> categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  factory VolumeInfo.fromJson(Map<String, dynamic> json){
    return VolumeInfo(
      title: json["title"],
      authors: json["authors"] == null ? [] : List<String>.from(json["authors"]!.map((x) => x)),
      publisher: json["publisher"],
      publishedDate: DateTime.tryParse(json["publishedDate"] ?? ""),
      description: json["description"],
      industryIdentifiers: json["industryIdentifiers"] == null ? [] : List<IndustryIdentifier>.from(json["industryIdentifiers"]!.map((x) => IndustryIdentifier.fromJson(x))),
      readingModes: json["readingModes"] == null ? null : ReadingModes.fromJson(json["readingModes"]),
      pageCount: json["pageCount"],
      printedPageCount: json["printedPageCount"],
      printType: json["printType"],
      categories: json["categories"] == null ? [] : List<String>.from(json["categories"]!.map((x) => x)),
      maturityRating: json["maturityRating"],
      allowAnonLogging: json["allowAnonLogging"],
      contentVersion: json["contentVersion"],
      panelizationSummary: json["panelizationSummary"] == null ? null : PanelizationSummary.fromJson(json["panelizationSummary"]),
      imageLinks: json["imageLinks"] == null ? null : ImageLinks.fromJson(json["imageLinks"]),
      language: json["language"],
      previewLink: json["previewLink"],
      infoLink: json["infoLink"],
      canonicalVolumeLink: json["canonicalVolumeLink"],
    );
  }

}