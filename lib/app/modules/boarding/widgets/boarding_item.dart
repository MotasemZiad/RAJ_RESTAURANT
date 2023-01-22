import 'package:raj_resturant/app/modules/boarding/controllers/boarding_controller.dart';
import 'package:raj_resturant/constants/dummy.dart';

import '../../../../constants/exports.dart';

class BoardingItem extends GetView<BoardingController> {
  const BoardingItem({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            height: 200.h,
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: carouselSlider
                  .map((e) => _buildIndicator(
                        carouselSlider.indexOf(e) == controller.current,
                      ))
                  .toList(),
            ),
          ),
          PrimaryText(
            title,
            fontSize: 20.sp,
            fontWeight: FontWeightManager.bold,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.h,
          ),
          PrimaryText(
            description,
            fontSize: 13.sp,
            fontWeight: FontWeightManager.regular,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: isActive ? 25 : 8,
      decoration: BoxDecoration(
        color: isActive ? ColorManager.primary : Colors.grey[400],
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
