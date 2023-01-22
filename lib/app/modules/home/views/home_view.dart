import 'package:raj_resturant/app/modules/drawer/controllers/drawer_controller.dart';
import 'package:raj_resturant/app/modules/home/widgets/location_widget.dart';
import 'package:raj_resturant/app/routes/app_pages.dart';
import 'package:raj_resturant/constants/dummy.dart';
import 'package:raj_resturant/constants/exports.dart';
import 'package:raj_resturant/generated/locales.g.dart';
import 'package:raj_resturant/global_presentation/global_widgets/custom_header.dart';
import 'package:raj_resturant/global_presentation/global_widgets/row_text_widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Column(children: [
            GetBuilder<MyDrawerController>(
              builder: (controller) => CustomHeader(
                title: LocaleKeys.text_welcome,
                subtitle: LocaleKeys.text_welcome_info,
                onTap: () {
                  controller.toggleDrawer();
                },
              ),
            ),
            SizedBox(height: 16.h),
            LocationWidget(
              title: LocaleKeys.text_location.tr,
              subtitle: LocaleKeys.text_location_info.tr,
              onTap: () => Get.toNamed(Routes.MAP_LOCATION),
            ),
            SizedBox(height: 20.0.h),
            RowTextWidget(
              leadingTitle: LocaleKeys.text_categories.tr,
              trailingTitle: LocaleKeys.text_see_all.tr,
              onTap: () => Get.toNamed(Routes.ALL_CATEGORIES),
            ),
            SizedBox(height: 8.0.h),
            SizedBox(
              height: 130.h,
              child: ListView(
                addAutomaticKeepAlives: false,
                addRepaintBoundaries: false,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: dummyCategories,
              ),
            ),
            SizedBox(height: 20.0.h),
            RowTextWidget(
              leadingTitle: LocaleKeys.text_popular.tr,
              trailingTitle: LocaleKeys.text_see_all.tr,
              onTap: () => Get.toNamed(Routes.ALL_MEALS),
            ),
            SizedBox(
              height: 220.h,
              child: ListView(
                addAutomaticKeepAlives: false,
                addRepaintBoundaries: false,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: dummyMeals,
              ),
            ),
            SizedBox(height: 20.0.h),
            RowTextWidget(
              leadingTitle: LocaleKeys.text_main_meals.tr,
              trailingTitle: LocaleKeys.text_see_all.tr,
              onTap: () => Get.toNamed(Routes.ALL_MEALS),
            ),
            SizedBox(
              height: 220.h,
              child: ListView(
                addAutomaticKeepAlives: false,
                addRepaintBoundaries: false,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: dummyMeals,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
