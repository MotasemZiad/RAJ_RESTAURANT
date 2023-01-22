import 'package:get/get.dart';

import '../controllers/meal_controller.dart';

class MealBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MealController>(
      () => MealController(),
    );
  }
}
