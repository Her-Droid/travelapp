import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/theme.dart';
import 'trip_list_controller.dart';
import '../../routes/app_routes.dart';

class TripListPage extends StatelessWidget {
  final TripListController controller = Get.put(TripListController());
  final RxBool isClicked = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Obx(() {
                if (controller.tripList.isEmpty) {
                  return Center(child: Text("Tidak ada trip tersedia."));
                }
                return ListView.builder(
                  itemCount: controller.tripList.length,
                  itemBuilder: (context, index) {
                    final trip = controller.tripList[index];
                    return InkWell(
                      onTap: () =>
                          Get.toNamed(AppRoutes.tripDetail, arguments: trip),
                      child: Card(
                        color: Colors.white,
                        elevation: 3,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(12)),
                              child: Image.network(
                                trip.image,
                                height: 180,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    trip.title,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    trip.place,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.blueGrey, size: 24),
                                      SizedBox(width: 4),
                                      Text('${trip.rating}',
                                          style: TextStyle(fontSize: 14)),
                                      Text('/5',
                                          style: TextStyle(
                                              fontSize: 14, color: textgrey)),
                                      Text(' (${trip.reviews.length} Review)',
                                          style: TextStyle(
                                              fontSize: 14, color: textgrey)),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Mulai dari',
                                          style: TextStyle(color: textgrey)),
                                      Text(
                                        controller.formatCurrency
                                            .format(trip.price),
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFFf15c59)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
