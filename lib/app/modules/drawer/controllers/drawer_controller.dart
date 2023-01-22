import 'package:flutter_zoom_drawer/config.dart';

import 'package:get/get.dart';

class MyDrawerController extends GetxController {
  late ZoomDrawerController zoomDrawerController;

  @override
  void onInit() {
    zoomDrawerController = ZoomDrawerController();
    super.onInit();
  }

  void toggleDrawer() {
    zoomDrawerController.toggle?.call();
    update();
  }
}
