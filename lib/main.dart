import 'package:raj_resturant/generated/locales.g.dart';

import 'app/routes/app_pages.dart';
import 'constants/exports.dart';

void main() {
  runApp(
    ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return GetMaterialApp(
            title: "Raj Restaurant",
            translationsKeys: AppTranslation.translations,
            debugShowCheckedModeBanner: false,
            initialRoute: AppPages.INITIAL,
            theme: ThemeData(
              appBarTheme: AppBarTheme(
                backgroundColor: ColorManager.primaryLightOpacity,
                elevation: 0,
                iconTheme: IconThemeData(
                  color: ColorManager.black47,
                ),
                titleTextStyle: TextStyle(
                  color: ColorManager.black47,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            locale: Get.deviceLocale,
            getPages: AppPages.routes,
          );
        }),
  );
}
