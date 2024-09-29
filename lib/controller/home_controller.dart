import 'package:carousel_slider/carousel_controller.dart';
import 'package:fabcurate_flutter/data/bottomCategory/index.dart';
import 'package:fabcurate_flutter/data/middleCategory/index.dart';
import 'package:fabcurate_flutter/data/topCategoryData/index.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  CarouselSliderController carouselController = CarouselSliderController();
  int index = 0;
  bool isDark = Get.isDarkMode;
  List topCategory = [];
  List middleCategoryData = [];
  List middleCategoryData1 = [];
  List bottomCategoryData = [];
  List bottomCategoryData1 = [];
  // On index change
  onIndexChange(val, reason) {
    index = val;
    update();
  }

  // All slider images
  List banners = [
    //  eImageAssets.banner,
    //  eImageAssets.banner2,
    //  eImageAssets.banner3
  ];

  @override
  void onReady() {
    topCategory = topCategoryData['main_sticky_menu'];
    middleCategoryData = middleCategory['shop_by_category'];
    middleCategoryData1 = middleCategory['shop_by_fabric'];
    bottomCategoryData = bottomCategory['range_of_pattern'];
    bottomCategoryData1 = bottomCategory['design_occasion'];
    // bottomCategoryData = bottomCategory[0];
    update();
    // TODO: implement onReady
    super.onReady();
  }
}
