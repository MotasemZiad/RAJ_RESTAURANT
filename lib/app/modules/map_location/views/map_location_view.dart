import 'package:raj_resturant/app/routes/app_pages.dart';
import 'package:raj_resturant/constants/exports.dart';
import 'package:raj_resturant/generated/locales.g.dart';

import '../controllers/map_location_controller.dart';

class MapLocationView extends GetView<MapLocationController> {
  const MapLocationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MapLocationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: PrimaryButton(
            color: ColorManager.primary,
            fontColor: ColorManager.white,
            fontSize: 16,
            onPressed: () {
              Get.toNamed(Routes.ADDRESS_DETAILS);
            },
            title: LocaleKeys.buttons_choose_location.tr,
          ),
        ),
      ),
    );
  }
}
