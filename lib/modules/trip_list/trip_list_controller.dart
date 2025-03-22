import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../data/dummy_data.dart';
import '../../models/trip_model.dart';

class TripListController extends GetxController {
  RxList<Trip> tripList = dummyTrips.obs;
  final formatCurrency = NumberFormat.currency(
    locale: 'id_ID', // Format Indonesia
    symbol: 'Rp ', // Simbol mata uang
    decimalDigits: 0, // Tidak pakai desimal
  );
}
