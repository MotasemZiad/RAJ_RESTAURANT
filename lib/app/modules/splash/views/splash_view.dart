import 'package:raj_resturant/constants/exports.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (context) {
        return Scaffold(
          backgroundColor: ColorManager.primaryLight,
          body: SafeArea(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svg/splash_background.svg',
                  ),
                  Center(
                    child: SvgPicture.asset(
                      'assets/svg/logo.svg',
                      height: 80,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
