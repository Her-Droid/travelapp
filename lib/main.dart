import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'routes/app_routes.dart';
import 'modules/trip_list/trip_list_page.dart';

void main() async {
  await initializeDateFormatting('id_ID', null);
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
