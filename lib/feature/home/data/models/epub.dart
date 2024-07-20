class Epub {
  Epub({
    required this.isAvailable,
    required this.acsTokenLink,
  });

  final bool? isAvailable;
  final String? acsTokenLink;

  factory Epub.fromJson(Map<String, dynamic> json){
    return Epub(
      isAvailable: json["isAvailable"],
      acsTokenLink: json["acsTokenLink"],
    );
  }

}