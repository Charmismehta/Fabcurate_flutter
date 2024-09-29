
import 'package:fabcurate_flutter/theme/app_theme.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  AppTheme _appTheme = AppTheme.fromType(ThemeType.light);
  AppTheme get appTheme => _appTheme;
  String priceSymbol = "\$";
  bool isTheme = false;
  bool isRTL = false;
  String languageVal = "in";
  final storage = GetStorage();
  bool isSwitched = false;
  bool isOnboard = false;
  dynamic currency;
  //update theme
  updateTheme(theme) {
    _appTheme = theme;
    Get.forceAppUpdate();
  }

  // // Product bottom sheet
  // productBottomSheet (){
  //   Get.bottomSheet(ProductDetailBottomSheet(),isScrollControlled: true);
  // }

  // // Current location sheet
  // currentLocationSheet () {
  //   Get.bottomSheet(const CurrentLocationSheet());
  // }





}
