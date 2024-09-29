import 'package:fabcurate_flutter/routes/route_name.dart';
import 'package:fabcurate_flutter/screen/homeScreen/index.dart';
import 'package:get/route_manager.dart';

RouteName _routeName = RouteName();

class AppRoute {
  final List<GetPage> getPages = [
    GetPage(name: _routeName.dashboardScreen, page: () => HomeScreen()),
  ];
}
