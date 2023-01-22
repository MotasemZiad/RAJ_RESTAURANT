import 'package:raj_resturant/constants/exports.dart';
import 'package:raj_resturant/generated/locales.g.dart';

import '../controllers/address_details_controller.dart';
import 'dart:math' as math;

class AddressDetailsView extends GetView<AddressDetailsController> {
  const AddressDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.navigation_drawer_complete_address.tr),
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
                LocaleKeys.text_fields_address_name.tr,
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
              hintText: LocaleKeys.text_fields_address_name.tr,
              keyboardType: TextInputType.name,
              controller: controller.addressController,
              focusNode: controller.addressFocusNode,
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
              ),
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
                LocaleKeys.text_fields_region.tr,
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
              hintText: LocaleKeys.text_fields_region.tr,
              keyboardType: TextInputType.name,
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
              ),
              controller: controller.regionController,
              focusNode: controller.regionFocusNode,
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
                LocaleKeys.text_fields_housing_type.tr,
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
              hintText: LocaleKeys.text_fields_housing_type.tr,
              controller: controller.housingTypeController,
              focusNode: controller.housingTypeFocusNode,
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
                LocaleKeys.text_fields_apartment_number.tr,
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
              hintText: LocaleKeys.text_fields_apartment_number.tr,
              controller: controller.apartmentNumberController,
              focusNode: controller.apartmentNumberFocusNode,
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
