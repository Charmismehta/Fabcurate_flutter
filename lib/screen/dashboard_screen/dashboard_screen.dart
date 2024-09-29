import 'package:fabcurate_flutter/controller/dashboard_controller.dart';
import 'package:fabcurate_flutter/screen/homeScreen/bottom_nav_bar_common.dart';
import 'package:get/get.dart';

import '../../../config.dart';

class DashboardScreen extends StatelessWidget {
  final dashCtrl = Get.put(DashboardController());

  DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (dashCtrl) {
      return Scaffold(
          backgroundColor: appCtrl.appTheme.white,
          body: dashCtrl.dashLists.isNotEmpty
              ? DefaultTabController(
                  length: dashCtrl.dashLists.length,
                  child: Scaffold(
                      // Tab bar view
                      body: TabBarView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: dashCtrl.tabController,
                          children: dashCtrl.pages),

                      // All tabs
                      bottomNavigationBar: BottomNavBar(),
                      backgroundColor: appCtrl.appTheme.white))
              : Container());
    });
  }
}
