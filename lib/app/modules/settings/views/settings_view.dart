import 'package:raj_resturant/app/modules/settings/widgets/change_language_sheet.dart';
import 'package:raj_resturant/app/routes/app_pages.dart';
import 'package:raj_resturant/constants/exports.dart';
import 'package:raj_resturant/generated/locales.g.dart';
import 'package:raj_resturant/global_presentation/global_widgets/custom_row.dart';

import 'dart:math' as math;

class SettingsView extends StatefulWidget {
  SettingsView({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool enableNotification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.scaffoldKey,
      appBar: AppBar(
        title: Text(LocaleKeys.navigation_drawer_settings.tr),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20.0.w, right: 20.0.w, top: 8.0.h),
        child: Column(
          children: [
            CustomRow(
              backgroundColor: ColorManager.primary,
              title: LocaleKeys.text_notifications.tr,
              leading: 'assets/svg/notifications.svg',
              isTrailing: true,
              trailing: Switch.adaptive(
                value: enableNotification,
                activeColor: ColorManager.primary,
                thumbColor: MaterialStateProperty.all(Colors.white),
                onChanged: (_) {
                  setState(() {
                    enableNotification = !enableNotification;
                  });
                },
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomRow(
              backgroundColor: ColorManager.black47,
              title: LocaleKeys.text_choose_language.tr,
              leading: 'assets/svg/languages.svg',
              isTrailing: true,
              trailing: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  PrimaryText(
                    'EN',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w900,
                    color: ColorManager.grey,
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: ColorManager.grey,
                  ),
                ],
              ),
              onTap: () {
                widget.scaffoldKey.currentState!.showBottomSheet(
                  (context) => const ChangeLanguageSheet(),
                );
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomRow(
              backgroundColor: ColorManager.greenIcon,
              title: LocaleKeys.text_change_password.tr,
              leading: 'assets/svg/password.svg',
              onTap: () {
                Get.toNamed(Routes.CHANGE_PASSWORD);
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomRow(
              backgroundColor: ColorManager.red,
              title: LocaleKeys.text_delete_account.tr,
              leading: 'assets/svg/delete.svg',
              onTap: () {},
              isTrailing: true,
              trailing: Container(),
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
