import 'package:booklyapp/feature/home/data/models/accessinfo.dart';
import 'package:booklyapp/feature/home/data/models/layerinfo.dart';
import 'package:booklyapp/feature/home/data/models/saleinfo.dart';
import 'package:booklyapp/feature/home/data/models/volumeinfo.dart';

class Books {
  Books({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.layerInfo,
    required this.saleInfo,
    required this.accessInfo,
  });

  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final LayerInfo? layerInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;

  factory Books.fromJson(Map<String, dynamic> json){
    return Books(
      kind: json["kind"],
      id: json["id"],
      etag: json["etag"],
      selfLink: json["selfLink"],
      volumeInfo: json["volumeInfo"] == null ? null : VolumeInfo.fromJson(json["volumeInfo"]),
      layerInfo: json["layerInfo"] == null ? null : LayerInfo.fromJson(json["layerInfo"]),
      saleInfo: json["saleInfo"] == null ? null : SaleInfo.fromJson(json["saleInfo"]),
      accessInfo: json["accessInfo"] == null ? null : AccessInfo.fromJson(json["accessInfo"]),
    );
  }

}














