import 'package:fabcurate_flutter/config.dart';
import 'package:fabcurate_flutter/data/topCategoryData/index.dart';
import 'package:fabcurate_flutter/theme/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class CarouselSlide extends StatefulWidget {
  @override
  _CarouselSlideState createState() => _CarouselSlideState();
}

class _CarouselSlideState extends State<CarouselSlide> {
  @override
  Widget build(BuildContext context) {
    final sliderImages =
        topCategoryData['main_sticky_menu'][0]['slider_images'];

    return Container(
      height: Sizes.s300,
      child: CarouselSlider.builder(
        itemCount: sliderImages.length,
        itemBuilder: (context, index, realIndex) {
          final item = sliderImages[index];
          return Stack(children: [
            Image.network(item['image'],
                height: Sizes.s400, width: Sizes.s600, fit: BoxFit.cover),
            Positioned(
                width: Sizes.s200,
                bottom: Sizes.s20,
                left: Sizes.s60,
                child: Container(
                    padding: EdgeInsets.all(Insets.i10),
                    alignment: Alignment.center,
                    color: AppColors.whiteOpacity,
                    child: Column(
                      children: [
                        Text(
                          item['title'],
                        ).alignment(Alignment.center),
                      ],
                    )))
          ]);
        },
        options: CarouselOptions(
            aspectRatio: 16 / 9,
            viewportFraction: 0.75,
            disableCenter: false,
            enlargeCenterPage: true,
            onPageChanged: (val, reason) => {}),
      ),
    ).paddingOnly(left: Insets.i10);
  }
}
