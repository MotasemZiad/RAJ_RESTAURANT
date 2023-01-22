import 'package:raj_resturant/app/modules/contact_us/widgets/custom_list_tile_widget.dart';
import 'package:raj_resturant/constants/exports.dart';
import 'package:raj_resturant/generated/locales.g.dart';
import 'dart:math' as math;
import '../controllers/contact_us_controller.dart';

class ContactUsView extends GetView<ContactUsController> {
  const ContactUsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.navigation_drawer_contact_us.tr),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20.0.w, right: 20.0.w, top: 8.0.h),
        child: Column(
          children: [
            SizedBox(
              height: 35.0.h,
            ),
            CustomListTileWidget(
              label: '0599838964',
              icon: 'assets/svg/customer_service.svg',
              color: ColorManager.greenIcon,
            ),
            SizedBox(
              height: 8.0.h,
            ),
            CustomListTileWidget(
              label: 'indienresturantabhe',
              icon: 'assets/svg/instagram.svg',
              color: ColorManager.red,
            ),
            SizedBox(
              height: 8.0.h,
            ),
            CustomListTileWidget(
              label: '0172223555',
              icon: 'assets/svg/phone_call.svg',
              color: ColorManager.primary,
            ),
            const Spacer(
              flex: 3,
            ),
            PrimaryText(
              "Follow Us",
              fontSize: 16.sp,
            ),
            SizedBox(
              height: 8.0.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 40.w,
                  height: 40.h,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFEA7E60),
                        Color(0xFF9D48BD),
                      ],
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    'assets/svg/instagram.svg',
                  ),
                ),
                Container(
                  width: 40.w,
                  height: 40.h,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: ColorManager.greenIcon,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    'assets/svg/whatsapp.svg',
                  ),
                ),
                Container(
                  width: 40.w,
                  height: 40.h,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: ColorManager.blueIcon,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    'assets/svg/facebook.svg',
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Transform.rotate(
              angle: 180 * math.pi / 180,
              child: SvgPicture.asset('assets/svg/top_pattern.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
