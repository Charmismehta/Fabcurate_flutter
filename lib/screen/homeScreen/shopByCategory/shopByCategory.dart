import 'package:fabcurate_flutter/theme/colors.dart';
import 'package:get/get.dart';

import '../../../config.dart';

class ShopByCategory extends StatelessWidget {
  final dynamic item;

  const ShopByCategory({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color fromHex(String hexString) {
      final buffer = StringBuffer();
      if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
      buffer.write(hexString.replaceFirst('#', ''));
      return Color(int.parse(buffer.toString(), radix: 16));
    }

    return SizedBox(
      child: Container(
        margin: const EdgeInsets.all(Insets.i6),
        color: fromHex(item['tint_color']),
        // padding: 5,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.network(item['image'],
              fit: BoxFit.cover, height: Sizes.s140, width: Sizes.s160),
          Text(
            item['name'].toString().toUpperCase(),
            style: const TextStyle(
                fontSize: FontSizes.f14, color: AppColors.darkText),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).paddingSymmetric(horizontal: Insets.i10, vertical: Insets.i7),
          Text(
            '+explore'.toUpperCase(),
            style: const TextStyle(
                fontSize: FontSizes.f10, color: AppColors.darkText),
          )
              .paddingSymmetric(horizontal: Insets.i10)
              .padding(bottom: Insets.i10),
        ]),
      ),
    );
  }
}
