import 'package:get/get.dart';

import '../controllers/map_location_controller.dart';

class MapLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MapLocationController>(
      () => MapLocationController(),
    );
  }
}
