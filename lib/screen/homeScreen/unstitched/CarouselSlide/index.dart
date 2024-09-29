import 'package:fabcurate_flutter/config.dart';
import 'package:fabcurate_flutter/data/middleCategory/index.dart';
import 'package:fabcurate_flutter/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class UnstitchedCarouselSlide extends StatefulWidget {
  @override
  _CarouselSlideState createState() => _CarouselSlideState();
}

class _CarouselSlideState extends State<UnstitchedCarouselSlide> {
  int _currentIndex = 0;

  _renderItem(BuildContext context, int index) {
    final item = middleCategory['Unstitched'][index];
    return Stack(
      children: [
        Image.network(item['image'],
            fit: BoxFit.cover, height: Sizes.s600, width: Sizes.s400),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.black.withOpacity(0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['description'],
                  style:
                      TextStyle(color: Colors.white, fontSize: FontSizes.f14),
                ).alignment(Alignment.center),
                Text(
                  item['name'],
                  style:
                      TextStyle(color: Colors.white, fontSize: FontSizes.f20),
                ).alignment(Alignment.center),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Unstitched",
                style: TextStyle(
                    fontSize: FontSizes.f18, color: AppColors.darkText))
            .marginSymmetric(vertical: Insets.i10),
        CarouselSlider.builder(
          itemCount: middleCategory['Unstitched'].length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  _renderItem(context, itemIndex),
          options: CarouselOptions(
            aspectRatio: 10 / 10,
            viewportFraction: 0.70,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    ).paddingOnly(left: Insets.i10);
  }
}
