import 'package:raj_resturant/app/modules/user_addresses/widgets/address_widget.dart';
import 'package:raj_resturant/app/routes/app_pages.dart';
import 'package:raj_resturant/constants/exports.dart';

import 'package:raj_resturant/generated/locales.g.dart';

import '../controllers/user_addresses_controller.dart';
import 'dart:math' as math;

class UserAddressesView extends GetView<UserAddressesController> {
  const UserAddressesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.navigation_drawer_my_addresses.tr),
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            margin: EdgeInsets.only(left: 16.0.w, right: 16.0.w, top: 8.0.h),
            child: Column(
              children: [
                SizedBox(
                  height: 20.0.h,
                ),
                AddressWidget(
                  address: LocaleKeys.text_home_address.tr,
                  region: "حي الشيخ رضوان",
                  street: "شارع الجلاء",
                  housingType: "شقة سكنية",
                  color: ColorManager.primaryLightOpacity,
                ),
                SizedBox(
                  height: 8.0.h,
                ),
                AddressWidget(
                  address: LocaleKeys.text_work_address.tr,
                  region: "حي الشيخ رضوان",
                  street: "شارع الجلاء",
                  housingType: "شقة سكنية",
                  color: ColorManager.white,
                ),
              ],
            ),
          ),
          Positioned(
            child: Transform.rotate(
              angle: 180 * math.pi / 180,
              child: SvgPicture.asset('assets/svg/top_pattern.svg'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorManager.primary,
        onPressed: () {
          Get.toNamed(Routes.MAP_LOCATION);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
