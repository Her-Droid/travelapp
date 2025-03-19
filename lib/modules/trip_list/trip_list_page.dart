import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'trip_list_controller.dart';
import '../../routes/app_routes.dart';

class TripListPage extends StatelessWidget {
  final TripListController controller = Get.put(TripListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Open & Private Trips')),
      body: Obx(() => ListView.builder(
        itemCount: controller.tripList.length,
        itemBuilder: (context, index) {
          final trip = controller.tripList[index];
          return InkWell(
            onTap: () => Get.toNamed(AppRoutes.tripDetail, arguments: trip),
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                    child: Image.network(trip.image, height: 180, width: double.infinity, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(trip.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 16),
                            SizedBox(width: 4),
                            Text('${trip.rating}', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text('Mulai dari', style: TextStyle(color: Colors.grey)),
                        Text('Rp ${trip.price.toStringAsFixed(0)}',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      )),
    );
  }
}