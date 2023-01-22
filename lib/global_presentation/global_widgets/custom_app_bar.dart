import '../../constants/exports.dart';
import '../../app/modules/home/controllers/home_controller.dart';

class CustomAppBar extends GetView<HomeController> {
  const CustomAppBar({
    Key? key,
    this.title,
    this.leading,
    this.action,
  }) : super(key: key);

  final Widget? title, leading, action;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        leading ??
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: ColorManager.grey6,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: (Get.isDarkMode)
                      ? ColorManager.white
                      : ColorManager.black.withOpacity(0.7),
                  size: 25.w,
                ),
              ),
            ),
        title ?? Container(),
        action ?? const Text(""),
      ],
    );
  }
}
