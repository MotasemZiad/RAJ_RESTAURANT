import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class BoardingController extends GetxController {
  int current = 0;
  late CarouselController carouselController;

  @override
  void onInit() {
    carouselController = CarouselController();
    super.onInit();
  }
}
