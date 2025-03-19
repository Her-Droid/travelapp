import 'package:get/get.dart';
import '../modules/trip_list/trip_list_page.dart';
import '../modules/trip_detail/trip_detail_page.dart';

class AppRoutes {
  static const tripList = '/';
  static const tripDetail = '/trip-detail';

  static final routes = [
    GetPage(name: tripList, page: () => TripListPage()),
    GetPage(name: tripDetail, page: () => TripDetailPage()),
  ];
}