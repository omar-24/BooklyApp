class Layer {
  Layer({
    required this.layerId,
    required this.volumeAnnotationsVersion,
  });

  final String? layerId;
  final String? volumeAnnotationsVersion;

  factory Layer.fromJson(Map<String, dynamic> json){
    return Layer(
      layerId: json["layerId"],
      volumeAnnotationsVersion: json["volumeAnnotationsVersion"],
    );
  }

}