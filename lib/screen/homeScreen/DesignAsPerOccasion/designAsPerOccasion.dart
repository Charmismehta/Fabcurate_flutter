import 'package:fabcurate_flutter/theme/colors.dart';
import 'package:get/get.dart';

import '../../../config.dart';

class DesignAsPerOccasion extends StatelessWidget {
  final dynamic item;

  const DesignAsPerOccasion({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.network(item['image'],
          fit: BoxFit.cover, height: Sizes.s160, width: Sizes.s130),
      Positioned(
          width: Sizes.s130,
          bottom: Sizes.s40,
          child: Container(
            color: AppColors.whiteOpacity,
            child: Column(
              children: [
                Text(
                  item['name'].toString().toUpperCase(),
                  style: const TextStyle(
                      fontSize: FontSizes.f12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkText),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).paddingSymmetric(horizontal: Insets.i8, vertical: Insets.i2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item['sub_name'].toString().toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: FontSizes.f10,
                          color: AppColors.darkText),
                    ),
                    Text(
                      item['cta'].toString().toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: FontSizes.f8,
                          color: AppColors.darkText),
                    ).marginOnly(top: Insets.i3)
                  ],
                )
                    .paddingSymmetric(horizontal: Insets.i8)
                    .padding(bottom: Insets.i14),
              ],
            ),
          ))
    ]);
  }
}
