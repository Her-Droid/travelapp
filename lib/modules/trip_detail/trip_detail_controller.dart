import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../models/trip_model.dart';

class TripDetailController extends GetxController {
  late Trip trip;

  void setTrip(Trip selectedTrip) {
    trip = selectedTrip;
  }

  final formatCurrency = NumberFormat.currency(
    locale: 'id_ID', // Format Indonesia
    symbol: 'Rp ', // Simbol mata uang
    decimalDigits: 0, // Tidak pakai desimal
  );

  var selectedPackageName = "Pilih Paket".obs; // State yang bisa berubah
  var selectedPackagePrice = "-".obs; // Harga paket yang dipilih

  void selectPackage(String packageName, String packagePrice) {
    selectedPackageName.value = packageName;
    selectedPackagePrice.value = packagePrice;
  }

  void openWhatsApp(String trip) async {
    final phoneNumber = '6282258821877';
    final message =
        'Halo, saya ingin membeli trip ${trip} dengan paket ${selectedPackageName.value} seharga ${selectedPackagePrice.value}';
    final url =
        'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}';

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      print('Could not launch $url');
    }
  }
}
