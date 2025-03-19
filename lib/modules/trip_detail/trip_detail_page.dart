import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'trip_detail_controller.dart';

class TripDetailPage extends StatelessWidget {
  final TripDetailController controller = Get.put(TripDetailController());

  @override
  Widget build(BuildContext context) {
    final trip = Get.arguments;
    controller.setTrip(trip);

    return Scaffold(
      appBar: AppBar(title: Text(controller.trip.title)),
      body: ListView(
        children: [
          // Photo slider
          SizedBox(
            height: 240,
            child: PageView(
              children: controller.trip.photos
                  .map((photo) => Image.network(photo, fit: BoxFit.cover))
                  .toList(),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(controller.trip.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange),
                    SizedBox(width: 4),
                    Text('${controller.trip.rating} / 5.0')
                  ],
                ),
                SizedBox(height: 12),
                Text(controller.trip.summary),

                SizedBox(height: 20),
                Text('Pilihan Paket', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ...controller.trip.packages.map((pkg) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(pkg.name, style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Text('Harga: Rp ${pkg.price.toStringAsFixed(0)}'),
                          SizedBox(height: 8),
                          Text('Include: ${pkg.includes.join(', ')}'),
                          Text('Exclude: ${pkg.excludes.join(', ')}'),
                        ],
                      ),
                    ),
                  ),
                )),

                SizedBox(height: 20),
                Text('Review', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ...controller.trip.reviews.map((review) => ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(review.user),
                  subtitle: Text(review.comment),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      SizedBox(width: 4),
                      Text('${review.rating}')
                    ],
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}