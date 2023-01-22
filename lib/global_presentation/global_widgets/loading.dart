import '../../constants/exports.dart';

Future<dynamic> showLoadingDialog() {
  return Get.dialog(Obx(
    () {
      return Center(
        child: SizedBox(
          //   height: 120.h,
          width: 120.w,
          child: const Center(),
        ),
      );
    },
  ), barrierDismissible: false);
}
