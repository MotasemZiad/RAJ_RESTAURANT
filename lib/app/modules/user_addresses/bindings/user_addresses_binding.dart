import 'package:get/get.dart';

import '../controllers/user_addresses_controller.dart';

class UserAddressesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserAddressesController>(
      () => UserAddressesController(),
    );
  }
}
