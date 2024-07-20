class IndustryIdentifier {
  IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

  final String? type;
  final String? identifier;

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json){
    return IndustryIdentifier(
      type: json["type"],
      identifier: json["identifier"],
    );
  }

}
