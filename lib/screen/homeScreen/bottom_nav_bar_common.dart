import 'package:fabcurate_flutter/controller/dashboard_controller.dart';
import 'package:fabcurate_flutter/screen/dashboard_screen/layouts/material_indicator.dart';
import 'package:get/get.dart';

import '../../../../config.dart';

class BottomNavBar extends StatelessWidget {
  final dashCtrl = Get.find<DashboardController>();
  BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (dashCtrl) {
      // Bottom navigation bar
      return Material(
          color: appCtrl.appTheme.white,
          elevation: Sizes.s20,
          // Tabs
          child: TabBar(
              onTap: (val) {
                dashCtrl.tabController?.index = val;
                dashCtrl.update();
              },
              controller: dashCtrl.tabController,
              tabs: dashCtrl.dashLists
                  .asMap()
                  .entries
                  .map((e) => Tab(
                      text: e.value["title"].toString(),
                      icon: Icon(dashCtrl.tabController?.index == e.key
                          ? e.value["icon2"]
                          : e.value["icon"])))
                  .toList(),
              indicator: MaterialIndicator(),
              labelStyle: AppCss.metropolisTitle2,
              labelColor: appCtrl.appTheme.darkText,
              unselectedLabelStyle: AppCss.metropolisTitle2,
              unselectedLabelColor: appCtrl.appTheme.lightText,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: appCtrl.appTheme.white));
    });
  }
}
