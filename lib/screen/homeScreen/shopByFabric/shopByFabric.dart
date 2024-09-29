import 'package:fabcurate_flutter/theme/colors.dart';
import 'package:get/get.dart';

import '../../../config.dart';

class ShopByFabric extends StatelessWidget {
  final dynamic item;

  const ShopByFabric({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color fromHex(String hexString) {
      final buffer = StringBuffer();
      if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
      buffer.write(hexString.replaceFirst('#', ''));
      return Color(int.parse(buffer.toString(), radix: 16));
    }

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Image.network(
            item['image'],
            fit: BoxFit.cover,
            height: Sizes.s130,
            width: Sizes.s130,
          ),
        ),
        Positioned(
            width: Sizes.s90,
            bottom: Sizes.s32,
            left: Sizes.s30,
            child: Text(
              item['name'].toString().toUpperCase(),
              style: const TextStyle(
                  fontSize: FontSizes.f14, color: AppColors.screenBG),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ).paddingSymmetric(horizontal: Insets.i10)),
      ],
    );
  }
}
