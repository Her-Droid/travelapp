import 'package:get/get.dart';
import '../../data/dummy_data.dart';
import '../../models/trip_model.dart';

class TripListController extends GetxController {
  RxList<Trip> tripList = dummyTrips.obs;
}
