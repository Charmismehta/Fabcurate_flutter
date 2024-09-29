import 'package:fabcurate_flutter/screen/homeScreen/index.dart';
import 'package:get/get.dart';

import '../../config.dart';

class DashboardController extends GetxController
    with GetSingleTickerProviderStateMixin {
  int selectIndex = 0;

  TabController? tabController;

  List dashLists = [];
  // All BottomNavigation Pages
  final List<Widget> pages = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  var bottomNavyList = [
    {"icon": Icons.home, "title": "Home", "icon2": Icons.home},
    {"icon": Icons.category, "title": "Category", "icon2": Icons.category},
    {"icon": Icons.drafts, "title": "CJRATE", "icon2": Icons.drafts},
    {
      "icon": Icons.thunderstorm_outlined,
      "title": "Sale",
      "icon2": Icons.thunderstorm
    },
    {
      "icon": Icons.more_horiz,
      "title": "More",
      "icon2": Icons.more_horiz_rounded
    },
  ];

  @override
  void onReady() {
    dashLists = bottomNavyList;
    tabController = TabController(length: dashLists.length, vsync: this);
    update();
    // TODO: implement onReady
    super.onReady();
  }
}
