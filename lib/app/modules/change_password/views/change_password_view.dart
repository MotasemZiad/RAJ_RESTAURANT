import 'package:raj_resturant/constants/exports.dart';
import 'package:raj_resturant/generated/locales.g.dart';

import '../controllers/change_password_controller.dart';
import 'dart:math' as math;

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.text_change_password.tr),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20.0.w, right: 20.0.w, top: 8.0.h),
        child: Column(
          children: [
            SizedBox(
              height: 12.0.h,
            ),
            Container(
              alignment: Get.locale!.languageCode == "ar"
                  ? Alignment.topRight
                  : Alignment.topLeft,
              child: PrimaryText(
                LocaleKeys.text_fields_old_password.tr,
                fontSize: 13.sp,
                color: ColorManager.black47,
                fontWeight: FontWeightManager.regular,
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            PasswordTextField(
              hintText: LocaleKeys.text_fields_old_password.tr,
              controller: controller.oldPasswordController,
              focusNode: controller.oldPasswordFocusNode,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              validator: (value) {
                if (value!.isEmpty) {
                  return LocaleKeys.text_required_field.tr;
                }
                return null;
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              alignment: Get.locale!.languageCode == "ar"
                  ? Alignment.topRight
                  : Alignment.topLeft,
              child: PrimaryText(
                LocaleKeys.text_fields_new_password.tr,
                fontSize: 13.sp,
                color: ColorManager.black47,
                fontWeight: FontWeightManager.regular,
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            PasswordTextField(
              hintText: LocaleKeys.text_fields_new_password.tr,
              controller: controller.newPasswordController,
              focusNode: controller.newPasswordFocusNode,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              validator: (value) {
                if (value!.isEmpty) {
                  return LocaleKeys.text_required_field.tr;
                }
                return null;
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              alignment: Get.locale!.languageCode == "ar"
                  ? Alignment.topRight
                  : Alignment.topLeft,
              child: PrimaryText(
                LocaleKeys.text_fields_confirm_password.tr,
                fontSize: 13.sp,
                color: ColorManager.black47,
                fontWeight: FontWeightManager.regular,
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            PasswordTextField(
              hintText: LocaleKeys.text_fields_confirm_password.tr,
              controller: controller.confirmNewPasswordController,
              focusNode: controller.confirmNewPasswordFocusNode,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              validator: (value) {
                if (value!.isEmpty) {
                  return LocaleKeys.text_required_field.tr;
                }
                return null;
              },
            ),
            SizedBox(
              height: 35.h,
            ),
            PrimaryButton(
              color: ColorManager.primary,
              fontColor: ColorManager.white,
              fontSize: 16,
              onPressed: () {},
              title: LocaleKeys.buttons_save.tr,
            ),
            const Spacer(),
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
