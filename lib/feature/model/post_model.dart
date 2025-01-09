class PostModelCatogary {
  late final int id;
  late final num price;
  late final String title;
  late final String description;
  late final String image;
  late final String category;
  final Rating rating;
  PostModelCatogary(
      {required this.rating,
      required this.title,
      required this.description,
      required this.id,
      required this.price,
      required this.category,
      required this.image});

  factory PostModelCatogary.fromJson(Map<String, dynamic> json) {
    return PostModelCatogary(
      rating: Rating.fromJson(json['rating']),
      id: json["id"],
      title: json["title"],
      description: json["description"],
      price: json["price"],
      category: json['category'],
      image: json["image"],
    );
  }
}

class Rating {
  final num rate;
  final num count;

  Rating({required this.rate, required this.count});

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(rate: json["rate"], count: json["count"]);
  }
}
