import 'package:fabcurate_flutter/commonComponent/common_text.dart';
import 'package:fabcurate_flutter/theme/colors.dart';
import 'package:get/get.dart';

import '../../../config.dart';

class TopCategory extends StatelessWidget {
  final dynamic item;

  const TopCategory({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: Sizes.s150,
        margin: const EdgeInsets.all(Insets.i6),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightText, width: 0.56),
          borderRadius: BorderRadius.circular(AppRadius.r7),
        ),
        // padding: 5,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.network(item['image'],
              fit: BoxFit.cover, height: Sizes.s80, width: Sizes.s150),
          Text(
            item['title'] ?? item['name'],
            style: const TextStyle(fontSize: FontSizes.f15),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).alignment(Alignment.center).paddingAll(Insets.i5),
        ]),
        // if (subtextStyle != null)
        //   Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       if (textStyleView != null)
        //         Padding(
        //           padding: EdgeInsets.only(left: 8),
        //           child: Text(
        //             item['sub_name'],
        //             style: subNameStyle,
        //           ),
        //         ),
        //       Text(
        //         item['cta'] ?? '+explore',
        //         style: TextStyle(fontSize: item['cta'] != null ? 9 : null),
        //         // padding: item['cta'] != null
        //         //     ? EdgeInsets.symmetric(horizontal: 8)
        //         // : null,
        //       ),
        //     ],
        //   ),
      ),
    ]);

    //   // Image
    //   Image.asset(data["image"], height: Sizes.s36, width: Sizes.s45)
    //       .paddingSymmetric(horizontal: Insets.i8, vertical: Insets.i12)
    //       .categoryExtension(),

    //   // Text
    //   TextCommon().textMediumDarkColor(text: data["title"].toString())
    // ]).paddingOnly(right: Insets.i20);
  }
}
