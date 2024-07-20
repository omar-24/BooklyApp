import 'package:booklyapp/feature/home/data/models/layer.dart';

class LayerInfo {
  LayerInfo({
    required this.layers,
  });

  final List<Layer> layers;

  factory LayerInfo.fromJson(Map<String, dynamic> json){
    return LayerInfo(
      layers: json["layers"] == null ? [] : List<Layer>.from(json["layers"]!.map((x) => Layer.fromJson(x))),
    );
  }

}