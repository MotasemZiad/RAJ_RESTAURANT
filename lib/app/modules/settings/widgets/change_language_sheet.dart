import 'package:raj_resturant/app/modules/settings/widgets/language_widget.dart';
import 'package:raj_resturant/constants/exports.dart';
import 'package:raj_resturant/generated/locales.g.dart';

class ChangeLanguageSheet extends StatelessWidget {
  const ChangeLanguageSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.3,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: 45.w,
                height: 6.h,
                margin: EdgeInsets.only(bottom: 10.h, top: 10.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: ColorManager.grey6,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              PrimaryText(
                LocaleKeys.text_choose_language.tr,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: ColorManager.fontColor,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: const [
                  Expanded(
                    child: LanguageWidget(label: "English"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: LanguageWidget(label: 'العربية'),
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
