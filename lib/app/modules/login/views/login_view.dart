import 'package:raj_resturant/app/routes/app_pages.dart';
import 'package:raj_resturant/constants/exports.dart';
import 'package:raj_resturant/generated/locales.g.dart';
import 'package:raj_resturant/global_presentation/global_widgets/global_button.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: controller.formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/svg/top_pattern.svg',
              ),
              SizedBox(
                height: 20.h,
              ),
              SvgPicture.asset(
                'assets/svg/logo.svg',
                height: 80.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                alignment: Get.locale!.languageCode == "ar"
                    ? Alignment.topRight
                    : Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: PrimaryText(
                  LocaleKeys.text_login.tr,
                  fontSize: 20.sp,
                  fontWeight: FontWeightManager.bold,
                ),
              ),
              Container(
                alignment: Get.locale!.languageCode == "ar"
                    ? Alignment.topRight
                    : Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: PrimaryText(
                  LocaleKeys.text_login_info.tr,
                  fontSize: 13.sp,
                  color: ColorManager.black18,
                  fontWeight: FontWeightManager.regular,
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                alignment: Get.locale!.languageCode == "ar"
                    ? Alignment.topRight
                    : Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: PrimaryText(
                  LocaleKeys.text_fields_phone.tr,
                  fontSize: 13.sp,
                  color: ColorManager.black47,
                  fontWeight: FontWeightManager.regular,
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: PrimaryTextField(
                  hintText: LocaleKeys.text_fields_phone.tr,
                  keyboardType: TextInputType.phone,
                  suffixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Icon(
                      Icons.phone,
                      color: ColorManager.grey,
                    ),
                  ),
                  controller: controller.phoneController,
                  focusNode: controller.phoneFocusNode,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return LocaleKeys.text_required_field.tr;
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                alignment: Get.locale!.languageCode == "ar"
                    ? Alignment.topRight
                    : Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: PrimaryText(
                  LocaleKeys.text_fields_password.tr,
                  fontSize: 13.sp,
                  color: ColorManager.black47,
                  fontWeight: FontWeightManager.regular,
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: PasswordTextField(
                  hintText: LocaleKeys.text_fields_password.tr,
                  controller: controller.passwordController,
                  focusNode: controller.passwordFocusNode,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return LocaleKeys.text_required_field.tr;
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Get.locale!.languageCode == "ar"
                      ? Alignment.topRight
                      : Alignment.topLeft,
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  child: PrimaryText(
                    LocaleKeys.text_forgot_password.tr,
                    fontSize: 14.sp,
                    color: ColorManager.black47,
                    fontWeight: FontWeightManager.regular,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: PrimaryButton(
                  color: ColorManager.primary,
                  fontColor: ColorManager.white,
                  fontSize: 16,
                  onPressed: () {
                    Get.toNamed(Routes.DRAWER);
                  },
                  title: LocaleKeys.buttons_login.tr,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: GlobalButton(
                  width: Get.width,
                  height: 60.h,
                  onTap: () {
                    Get.toNamed(Routes.DRAWER);
                  },
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.bold,
                  fontSize: 16,
                  title: LocaleKeys.buttons_skip.tr,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: Get.locale!.languageCode == "ar"
                    ? TextDirection.rtl
                    : TextDirection.ltr,
                children: [
                  PrimaryText(
                    LocaleKeys.text_dont_have_account.tr,
                    fontSize: 14.sp,
                    color: ColorManager.black47,
                    fontWeight: FontWeightManager.regular,
                    textAlign: TextAlign.end,
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.REGISTER);
                    },
                    child: PrimaryText(
                      LocaleKeys.text_register.tr,
                      fontSize: 14.sp,
                      color: ColorManager.primary,
                      fontWeight: FontWeightManager.bold,
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
