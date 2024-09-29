import 'package:fabcurate_flutter/controller/dashboard_controller.dart';
import 'package:fabcurate_flutter/controller/home_controller.dart';
import 'package:fabcurate_flutter/screen/homeScreen/DesignAsPerOccasion/index.dart';
import 'package:fabcurate_flutter/screen/homeScreen/bottom_nav_bar_common.dart';
import 'package:fabcurate_flutter/screen/homeScreen/boutiqueCollection/CarouselSlide/index.dart';
import 'package:fabcurate_flutter/screen/homeScreen/rangeOfPattern/index.dart';
import 'package:fabcurate_flutter/screen/homeScreen/shopByCategory/index.dart';
import 'package:fabcurate_flutter/screen/homeScreen/shopByFabric/index.dart';
import 'package:fabcurate_flutter/screen/homeScreen/shopByFabric/shopByFabric.dart';
import 'package:fabcurate_flutter/screen/homeScreen/topSlider/CarouselSlide/index.dart';
import 'package:fabcurate_flutter/screen/homeScreen/unstitched/CarouselSlide/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'topCategory/index.dart';
import '../../../config.dart';

class HomeScreen extends StatelessWidget {
  final homeCtrl = Get.put(HomeController());

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeCtrl) {
      return Scaffold(
        // backgroundColor: appCtrl.appTheme.white,
        //     appBar: AppBarCommon(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // padding: EdgeInsets.symmetric(vertical: const EdgeInsets.symmetric(00)),
              TopCategoryCommon(),
              CarouselSlide(),
              ShopByCategoryCommon(),
              ShopByFabricCommon(),
              UnstitchedCarouselSlide(),
              BoutiqueCarouselSlide(),
              RangeOfPatternCommon(),
              DesignAsPerOccasionCommon(),
            ],
          ),
        ),
      );
    });
  }
}
