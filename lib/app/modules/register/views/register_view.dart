import 'package:raj_resturant/app/routes/app_pages.dart';
import 'package:raj_resturant/constants/exports.dart';
import 'package:raj_resturant/generated/locales.g.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

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
                height: 45.h,
              ),
              Container(
                alignment: Get.locale!.languageCode == "ar"
                    ? Alignment.topRight
                    : Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: PrimaryText(
                  LocaleKeys.text_register.tr,
                  fontSize: 20.sp,
                  fontWeight: FontWeightManager.bold,
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                alignment: Get.locale!.languageCode == "ar"
                    ? Alignment.topRight
                    : Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: PrimaryText(
                  LocaleKeys.text_register_info.tr,
                  fontSize: 13.sp,
                  color: ColorManager.black18,
                  fontWeight: FontWeightManager.regular,
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
                  LocaleKeys.text_fields_email.tr,
                  fontSize: 13.sp,
                  color: ColorManager.black47,
                  fontWeight: FontWeightManager.regular,
                  textAlign: TextAlign.end,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: PrimaryTextField(
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
                  LocaleKeys.text_fields_full_name.tr,
                  fontSize: 13.sp,
                  color: ColorManager.black47,
                  fontWeight: FontWeightManager.regular,
                  textAlign: TextAlign.end,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: PrimaryTextField(
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
                  LocaleKeys.text_fields_phone.tr,
                  fontSize: 13.sp,
                  color: ColorManager.black47,
                  fontWeight: FontWeightManager.regular,
                  textAlign: TextAlign.end,
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
                  textAlign: TextAlign.end,
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: PrimaryButton(
                  color: ColorManager.primary,
                  fontColor: ColorManager.white,
                  fontSize: 16,
                  onPressed: () {
                    Get.toNamed(Routes.DRAWER);
                  },
                  title: LocaleKeys.buttons_register.tr,
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
                    LocaleKeys.text_have_account.tr,
                    fontSize: 14.sp,
                    color: ColorManager.black47,
                    fontWeight: FontWeightManager.regular,
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offNamed(Routes.LOGIN);
                    },
                    child: PrimaryText(
                      LocaleKeys.text_login.tr,
                      fontSize: 14.sp,
                      color: ColorManager.primary,
                      fontWeight: FontWeightManager.bold,
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
