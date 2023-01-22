import 'package:get/get.dart';

import '../controllers/all_meals_controller.dart';

class AllMealsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllMealsController>(
      () => AllMealsController(),
    );
  }
}
