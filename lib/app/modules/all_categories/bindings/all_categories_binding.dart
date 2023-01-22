import 'package:get/get.dart';

import '../controllers/all_categories_controller.dart';

class AllCategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllCategoriesController>(
      () => AllCategoriesController(),
    );
  }
}
