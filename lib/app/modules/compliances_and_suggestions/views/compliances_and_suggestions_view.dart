import 'package:raj_resturant/constants/exports.dart';
import 'package:raj_resturant/generated/locales.g.dart';
import '../controllers/compliances_and_suggestions_controller.dart';

import 'dart:math' as math;

class CompliancesAndSuggestionsView
    extends GetView<CompliancesAndSuggestionsController> {
  const CompliancesAndSuggestionsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.navigation_drawer_compliances_and_suggestions.tr,
        ),
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
                LocaleKeys.text_fields_email.tr,
                fontSize: 13.sp,
                color: ColorManager.black47,
                fontWeight: FontWeightManager.regular,
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            PrimaryTextField(
              hintText: LocaleKeys.text_fields_email.tr,
              keyboardType: TextInputType.emailAddress,
              controller: controller.emailController,
              focusNode: controller.emailFocusNode,
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Icon(
                  Icons.email_outlined,
                  color: ColorManager.grey,
                ),
              ),
              validator: (value) {
                value!.trim();
                if (value.isEmpty) {
                  return LocaleKeys.text_required_field.tr;
                } else if (!RegExp(
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
                ).hasMatch(value)) {
                  return LocaleKeys.text_invalid_email.tr;
                } else {
                  return null;
                }
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
                LocaleKeys.text_fields_full_name.tr,
                fontSize: 13.sp,
                color: ColorManager.black47,
                fontWeight: FontWeightManager.regular,
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            PrimaryTextField(
              hintText: LocaleKeys.text_fields_full_name.tr,
              keyboardType: TextInputType.name,
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Icon(
                  Icons.person_outline,
                  color: ColorManager.grey,
                ),
              ),
              controller: controller.nameController,
              focusNode: controller.nameFocusNode,
              validator: (value) {
                value!.trim();
                if (value.isEmpty) {
                  return LocaleKeys.text_required_field.tr;
                } else {
                  return null;
                }
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
                LocaleKeys.text_fields_compliant_message.tr,
                fontSize: 13.sp,
                color: ColorManager.black47,
                fontWeight: FontWeightManager.regular,
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            PrimaryTextField(
              hintText: LocaleKeys.text_fields_compliant_message.tr,
              keyboardType: TextInputType.multiline,
              multiLines: true,
              maxLength: 5,
              controller: controller.textController,
              focusNode: controller.textFocusNode,
              validator: (value) {
                value!.trim();
                if (value.isEmpty) {
                  return LocaleKeys.text_required_field.tr;
                } else {
                  return null;
                }
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
              title: LocaleKeys.buttons_send.tr,
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
