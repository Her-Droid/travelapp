import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/app_routes.dart';
import 'modules/trip_list/trip_list_page.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    getPages: AppRoutes.routes,
    initialRoute: AppRoutes.tripList,
    theme: ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.grey[100],
    ),
  ));
}
