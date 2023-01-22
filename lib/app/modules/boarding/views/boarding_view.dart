import 'package:carousel_slider/carousel_slider.dart';
import 'package:raj_resturant/app/routes/app_pages.dart';

import 'package:raj_resturant/constants/dummy.dart';
import 'package:raj_resturant/constants/exports.dart';
import 'package:raj_resturant/generated/locales.g.dart';

import '../controllers/boarding_controller.dart';

class BoardingView extends GetView<BoardingController> {
  const BoardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset(
            'assets/svg/top_pattern.svg',
          ),
          CarouselSlider(
            items: carouselSlider,
            carouselController: controller.carouselController,
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              height: MediaQuery.of(context).size.height * 0.65,
              aspectRatio: 2.0,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                controller.current = index;
              },
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: PrimaryButton(
              color: ColorManager.primary,
              fontColor: ColorManager.white,
              fontSize: 16,
              onPressed: () {
                Get.offNamed(Routes.LOGIN);
              },
              title: LocaleKeys.lets_start,
            ),
          )
        ],
      ),
    );
  }
}
