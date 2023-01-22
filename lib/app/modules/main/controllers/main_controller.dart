import 'package:raj_resturant/constants/exports.dart';

class MainController extends GetxController {
  late PageController pageController;
  final animationDuration = const Duration(milliseconds: 300);

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onClose() {
    pageController.dispose();
    Get.delete();
    super.onClose();
  }
}
