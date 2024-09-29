import 'package:fabcurate_flutter/config.dart';
import 'package:fabcurate_flutter/data/middleCategory/index.dart';
import 'package:fabcurate_flutter/theme/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';

class BoutiqueCarouselSlide extends StatefulWidget {
  @override
  _BoutiqueCarouselSlideState createState() => _BoutiqueCarouselSlideState();
}

class _BoutiqueCarouselSlideState extends State<BoutiqueCarouselSlide> {
  int _currentIndex = 0;
  CarouselSliderController _carouselController = CarouselSliderController();

  Widget _renderItem(
    BuildContext context,
    int index,
  ) {
    final item = middleCategory['boutique_collection'][index];
    return Container(
      child: Stack(
        children: [
          Image.network(item['banner_image'],
              height: Sizes.s600, width: double.infinity, fit: BoxFit.fill),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.black.withOpacity(0.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['name'],
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 4),
                  Text(
                    item['cta'],
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Design As Per Occasion",
                style: TextStyle(
                    fontSize: FontSizes.f18, color: AppColors.darkText))
            .marginSymmetric(vertical: Insets.i10),
        CarouselSlider.builder(
            itemCount: middleCategory['boutique_collection'].length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    _renderItem(context, itemIndex),
            options: CarouselOptions(
                autoPlay: true,
                height: Sizes.s600,
                viewportFraction: 1,
                aspectRatio: 3,
                onPageChanged: (val, reason) => {})),
        SizedBox(height: 10),
        DotsIndicator(
          dotsCount: middleCategory['boutique_collection'].length,
          position: _currentIndex,
          decorator: DotsDecorator(
            color: AppColors.lightText,
            activeColor: AppColors.darkText,
            size: Size.square(8.0),
            activeSize: Size(11.0, 11.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ).alignment(Alignment.center),
      ],
    ).paddingOnly(left: Insets.i10);
  }
}
