class PricePackage {
  final String name;
  final double price;
  final List<String> includes;
  final List<String> excludes;

  PricePackage({
    required this.name,
    required this.price,
    required this.includes,
    required this.excludes,
  });
}

class Review {
  final String user;
  final String comment;
  final double rating;

  Review({required this.user, required this.comment, required this.rating});
}

class Trip {
  final String id;
  final String title;
  final String image;
  final String summary;
  final double rating;
  final double price;
  final List<String> photos;
  final List<PricePackage> packages;
  final List<Review> reviews;

  Trip({
    required this.id,
    required this.title,
    required this.image,
    required this.summary,
    required this.rating,
    required this.price,
    required this.photos,
    required this.packages,
    required this.reviews,
  });
}
