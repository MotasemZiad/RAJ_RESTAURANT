import 'package:get/get.dart';
import 'package:raj_resturant/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 2), () {}).then((value) async {
      Get.offNamed(Routes.BOARDING);
    });
  }
}
