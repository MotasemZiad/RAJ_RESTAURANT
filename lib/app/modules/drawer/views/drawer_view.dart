import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter/material.dart' hide DrawerController;
import 'package:get/get.dart';
import 'package:raj_resturant/app/modules/drawer/views/menu_view.dart';
import 'package:raj_resturant/app/modules/home/controllers/home_controller.dart';
import 'package:raj_resturant/app/modules/main/controllers/main_controller.dart';
import 'package:raj_resturant/app/modules/main/views/main_view.dart';
import 'package:raj_resturant/global_presentation/global_features/color_manager.dart';
import '../controllers/drawer_controller.dart';

class DrawerView extends GetView<MyDrawerController> {
  const DrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetxController mainController = Get.put<MainController>(MainController());
    GetxController homeController = Get.put<HomeController>(HomeController());
    return GetBuilder<MyDrawerController>(
      builder: (_) => ZoomDrawer(
        controller: _.zoomDrawerController,
        showShadow: true,
        menuScreenTapClose: true,
        moveMenuScreen: true,
        mainScreenTapClose: true,
        menuScreen: const MenuView(),
        mainScreen: const MainView(),
        borderRadius: 30.0,
        menuBackgroundColor: ColorManager.primaryLightOpacity,
        isRtl: Get.locale!.languageCode == 'en',
        angle: 0.0,
        dragOffset: 234,
        openCurve: Curves.easeInOutQuad,
        duration: const Duration(milliseconds: 500),
        slideWidth: MediaQuery.of(context).size.width * 0.80,
        shadowLayer1Color: ColorManager.primaryLight,
        shadowLayer2Color: ColorManager.primary.withOpacity(0.2),
        mainScreenScale: 0.11,
      ),
    );
  }
}
