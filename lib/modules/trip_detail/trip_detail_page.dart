import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:travelapp/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'trip_detail_controller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class TripDetailPage extends StatelessWidget {
  final TripDetailController controller = Get.put(TripDetailController());

  @override
  Widget build(BuildContext context) {
    final trip = Get.arguments;
    controller.setTrip(trip);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.network(controller.trip.image, fit: BoxFit.cover),
              ),

              // Tab Bar
              Container(
                alignment: Alignment.centerLeft,
                color: Colors.white,
                child: TabBar(
                  isScrollable: true,
                  labelColor: Colors.black,
                  indicatorColor: Colors.blue,
                  tabs: [
                    Tab(text: 'Ringkasan'),
                    Tab(text: 'Highlight'),
                    Tab(text: 'Paket'),
                    Tab(text: 'Review'),
                    Tab(text: 'Lokasi'),
                  ],
                ),
              ),

              // Tab View
              Expanded(
                child: TabBarView(
                  children: [
                    _buildRingkasan(context),
                    _buildHighlight(),
                    _buildPaket(),
                    _buildReview(),
                    _buildLokasi(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 0.4,
                      blurRadius: 0.4,
                      offset: Offset(0, -3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(() => Text(
                              controller.selectedPackageName.value,
                              style: TextStyle(color: textgrey),
                            )),
                        Obx(() => Text(
                              controller.selectedPackagePrice.value,
                              style: TextStyle(
                                  color: Color(0xFFf15c59),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.openWhatsApp(controller.trip.title);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF007cff), // Warna latar
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5), // Radius 12
                        ),
                      ),
                      child: Text(
                        "Pilih",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Konten untuk setiap tab
  Widget _buildRingkasan(BuildContext context) {
    String formatTime(TimeOfDay time) {
      final now = DateTime.now();
      final dateTime =
          DateTime(now.year, now.month, now.day, time.hour, time.minute);
      return DateFormat('HH:mm', 'id_ID')
          .format(dateTime); // Format Indonesia (24 jam)
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.trip.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Text(
                  controller.trip.rating.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  "/5",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 10),
                Text(
                  "(Lihat ${controller.trip.reviews.length} review & foto)",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on,
                  color: textgrey,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(controller.trip.address),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        controller.trip.place,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () => _openGoogleMaps(controller.trip.location),
                  icon: Icon(Icons.arrow_right_sharp),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.access_time_filled,
                  color: textgrey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Buka"),
                SizedBox(
                  width: 6,
                ),
                Text(
                  controller.trip.openingHours[1].day,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "${formatTime(controller.trip.openingHours[1].start)} - "
                  "${formatTime(controller.trip.openingHours[1].end)}",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 6,
                ),
                IconButton(
                  onPressed: () => Get.defaultDialog(
                    title: "Jam Buka",
                    titleStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    content: Column(
                      children: controller.trip.openingHours
                          .map((opening) => Column(
                                children: [
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        opening
                                            .day, // Ambil day dari openingHours
                                        style: TextStyle(color: textgrey),
                                      ),
                                      Text(
                                        "${formatTime(controller.trip.openingHours[1].start)} - "
                                        "${formatTime(controller.trip.openingHours[1].end)}", // Sesuaikan dengan data waktu
                                        style: TextStyle(color: textgrey),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                ],
                              ))
                          .toList(), // Tambahkan toList() di sini
                    ),
                  ),
                  icon: Icon(Icons.arrow_right_sharp),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Deskripsi",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 6,
            ),
            Text(controller.trip.summary),
            SizedBox(
              height: 5,
            ),
            Column(
              children: controller.trip.photos
                  .map((photo) => Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Image.network(
                            photo,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ],
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHighlight() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Highlight",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Column(
              children: controller.trip.highlight
                  .map(
                    (highlight) => Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '-',
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Text(highlight),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Informasi Penting",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Column(
              children: controller.trip.importantInformation
                  .map(
                    (info) => Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '-',
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Text(info),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaket() {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: controller.trip.packages
          .map((pkg) => Card(
                elevation: 0,
                color: Color(0xFFF4F7FE),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(pkg.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Include: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Column(
                        children: pkg.includes
                            .map(
                              (include) => Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '-',
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: Text(include),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text('Exclude: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Column(
                        children: pkg.excludes
                            .map(
                              (exclude) => Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '-',
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: Text(exclude),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            controller.formatCurrency.format(pkg.price),
                            style: TextStyle(
                                color: Color(0xFFf15c59),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              controller.selectPackage(pkg.name,
                                  controller.formatCurrency.format(pkg.price));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF007cff), // Warna latar
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(5), // Radius 12
                              ),
                            ),
                            child: Text(
                              "Pilih",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ))
          .toList(),
    );
  }

  Widget _buildReview() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Review",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  child: Text(
                    "Lihat semua",
                    style: TextStyle(
                      color: Color(0xFF007cff),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "4,6",
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Column(
                      children: [
                        Text(
                          "/5",
                          style: TextStyle(
                              color: textgrey, fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fantastis",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Dari ${controller.trip.reviews.length} Review",
                      style: TextStyle(color: textgrey, fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Scroll ke kanan & kiri
              child: LayoutBuilder(builder: (context, constraints) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: controller.trip.reviews
                      .map(
                        (review) => Container(
                          width: MediaQuery.of(context).size.width /
                              1.3, // Lebar sesuai layar
                          child: Card(
                            color: Colors.white,
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: IntrinsicHeight(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              review.rating.toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(width: 2),
                                            Column(
                                              children: [
                                                Text(
                                                  "/5",
                                                  style: TextStyle(
                                                      color: textgrey,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                SizedBox(height: 2),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Text(
                                          DateFormat("d MMMM yyyy")
                                              .format(review.day),
                                          style: TextStyle(
                                              fontSize: 12, color: textgrey),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            review.user,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Text("."),
                                        SizedBox(width: 8),
                                        Text(
                                          review.role,
                                          style: TextStyle(color: textgrey),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Text(review.comment),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLokasi() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              color: Colors.white,
              elevation: 2,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/maps.PNG",
                    fit: BoxFit.cover,
                    height: 150,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(controller.trip.address),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => _openGoogleMaps(controller.trip.location),
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xFFF4F7FE),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.send,
                                size: 28,
                                color: Color(0xFF007cff),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Lihat Peta",
                            style: TextStyle(
                                color: Color(0xFF007cff),
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _openGoogleMaps(LatLng location) async {
  final url = Uri.parse("https://www.google.com/maps/search/?api=1&query=${location.latitude},${location.longitude}");

  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    print("Tidak dapat membuka Google Maps");
  }
}