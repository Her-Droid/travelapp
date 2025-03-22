import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
  final String role;
  final String comment;
  final double rating;
  final DateTime day;
  Review(
      {required this.user,
      required this.role,
      required this.comment,
      required this.rating,
      required this.day});
}

class OpeningHours {
  final String day;
  final TimeOfDay start;
  final TimeOfDay end;

  OpeningHours({
    required this.day,
    required this.start,
    required this.end,
  });
}

class Trip {
  final String id;
  final String title;
  final String image;
  final String summary;
  final String place;
  final String address;
  final LatLng location;
  final List<String> importantInformation;
  final List<String> highlight;
  final double rating;
  final double price;
  final List<OpeningHours> openingHours;
  final List<String> photos;
  final List<PricePackage> packages;
  final List<Review> reviews;
  final bool ticketsAvailable;

  Trip({
    required this.id,
    required this.title,
    required this.image,
    required this.summary,
    required this.place,
    required this.address,
    required this.location,
    required this.importantInformation,
    required this.highlight,
    required this.rating,
    required this.price,
    required this.openingHours,
    required this.photos,
    required this.packages,
    required this.reviews,
    required this.ticketsAvailable,
  });
}
