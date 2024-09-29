import 'package:fabcurate_flutter/controller/home_controller.dart';
import 'package:fabcurate_flutter/screen/homeScreen/topCategory/topCategory.dart';
import 'package:get/get.dart';
import '../../../config.dart';

class TopCategoryCommon extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();

  TopCategoryCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeCtrl) {
      return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: homeCtrl.topCategory
                      .asMap()
                      .entries
                      .map((e) => TopCategory(item: e.value).inkWell())
                      .toList()))
          .paddingOnly(left: Insets.i10);
    });
  }
}
