class ImageLinks {
  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
    required this.small,
    required this.medium,
    required this.large,
    required this.extraLarge,
  });

  final String? smallThumbnail;
  final String? thumbnail;
  final String? small;
  final String? medium;
  final String? large;
  final String? extraLarge;

  factory ImageLinks.fromJson(Map<String, dynamic> json){
    return ImageLinks(
      smallThumbnail: json["smallThumbnail"],
      thumbnail: json["thumbnail"] as String?,
      small: json["small"],
      medium: json["medium"],
      large: json["large"],
      extraLarge: json["extraLarge"],
    );
  }

}
