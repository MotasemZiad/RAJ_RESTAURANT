import 'package:raj_resturant/app/modules/drawer/controllers/drawer_controller.dart';
import 'package:raj_resturant/app/modules/drawer/widgets/menu_header.dart';
import 'package:raj_resturant/app/modules/drawer/widgets/menu_item.dart';
import 'package:raj_resturant/app/modules/main/controllers/main_controller.dart';
import 'package:raj_resturant/app/routes/app_pages.dart';
import 'package:raj_resturant/generated/locales.g.dart';

import '../../../../constants/exports.dart';

class MenuView extends GetView<MyDrawerController> {
  const MenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final myDrawerController = Get.find<MyDrawerController>();
    return Scaffold(
      backgroundColor: ColorManager.primaryLightOpacity,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                SizedBox(
                  height: 100.h,
                ),
                const MenuHeader(),
                SizedBox(
                  height: 50.h,
                ),
                GetBuilder<MainController>(
                  builder: (controller) => MyMenuItem(
                    icon: SvgPicture.asset(
                      "assets/svg/profile_nav.svg",
                      height: 22.h,
                    ),
                    title: LocaleKeys.navigation_drawer_profile.tr,
                    onTap: () {
                      myDrawerController.toggleDrawer();
                      controller.pageController.animateToPage(
                        3,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ),
                MyMenuItem(
                  icon: SvgPicture.asset(
                    "assets/svg/orders_nav.svg",
                    height: 25.h,
                  ),
                  title: LocaleKeys.navigation_drawer_my_orders.tr,
                  onTap: () {
                    Get.toNamed(Routes.MY_ORDERS);
                  },
                ),
                MyMenuItem(
                  icon: SvgPicture.asset(
                    "assets/svg/address_nav.svg",
                    height: 25.h,
                  ),
                  title: LocaleKeys.navigation_drawer_my_addresses.tr,
                  onTap: () {
                    Get.toNamed(Routes.USER_ADDRESSES);
                  },
                ),
                MyMenuItem(
                  icon: SvgPicture.asset(
                    "assets/svg/compliance_nav.svg",
                    height: 25.h,
                  ),
                  title: LocaleKeys
                      .navigation_drawer_compliances_and_suggestions.tr,
                  onTap: () {
                    Get.toNamed(Routes.COMPLIANCES_AND_SUGGESTIONS);
                  },
                ),
                MyMenuItem(
                  icon: SvgPicture.asset(
                    "assets/svg/contact_us_nav.svg",
                    height: 25.h,
                  ),
                  title: LocaleKeys.navigation_drawer_contact_us.tr,
                  onTap: () {
                    Get.toNamed(Routes.CONTACT_US);
                  },
                ),
                MyMenuItem(
                  icon: SvgPicture.asset(
                    "assets/svg/settings_nav.svg",
                    height: 25.h,
                  ),
                  title: LocaleKeys.navigation_drawer_settings.tr,
                  onTap: () {
                    Get.toNamed(Routes.SETTINGS);
                  },
                ),
                MyMenuItem(
                  icon: Icon(
                    Icons.logout,
                    size: 27.h,
                    color: ColorManager.primary,
                  ),
                  title: "Logout",
                  onTap: () {
                    Get.offAndToNamed(Routes.LOGIN);
                  },
                ),
                SizedBox(
                  height: 50.h,
                ),
                SvgPicture.asset(
                  'assets/svg/logo.svg',
                  height: 50.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
