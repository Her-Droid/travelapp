import 'package:get/get.dart';
import '../../models/trip_model.dart';

class TripDetailController extends GetxController {
  late Trip trip;

  void setTrip(Trip selectedTrip) {
    trip = selectedTrip;
  }
}
