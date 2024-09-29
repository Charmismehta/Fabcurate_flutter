import 'package:fabcurate_flutter/controller/home_controller.dart';
import 'package:fabcurate_flutter/screen/homeScreen/DesignAsPerOccasion/designAsPerOccasion.dart';
import 'package:fabcurate_flutter/screen/homeScreen/shopByCategory/shopByCategory.dart';
import 'package:fabcurate_flutter/theme/colors.dart';
import 'package:get/get.dart';
import '../../../config.dart';

class DesignAsPerOccasionCommon extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();

  DesignAsPerOccasionCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeCtrl) {
      return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Design As Per Occasion",
                    style: TextStyle(
                        fontSize: FontSizes.f18, color: AppColors.darkText))
                .marginSymmetric(vertical: Insets.i10),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: homeCtrl.bottomCategoryData1.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: Sizes.s210,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0),
                  itemBuilder: (context, index) {
                    return DesignAsPerOccasion(
                        item: homeCtrl.bottomCategoryData1[index]);
                  }),
            )
          ])).paddingOnly(left: Insets.i10);
    });
  }
}
