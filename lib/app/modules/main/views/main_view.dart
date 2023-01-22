import 'package:badges/badges.dart';
import 'package:raj_resturant/app/modules/cart/views/cart_view.dart';
import 'package:raj_resturant/app/modules/home/views/home_view.dart';
import 'package:raj_resturant/app/modules/profile/views/profile_view.dart';
import 'package:raj_resturant/app/modules/search/views/search_view.dart';
import 'package:raj_resturant/constants/exports.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);

  List<Widget> _getScreens() {
    return [
      const HomeView(),
      const CartView(),
      const SearchView(),
      const ProfileView(),
    ];
  }

  List<BottomNavigationBarItem> _navBarsItems() {
    return [
      BottomNavigationBarItem(
        label: "Home",
        icon: SvgPicture.asset(
          'assets/svg/home_inactive.svg',
          fit: BoxFit.cover,
        ),
        activeIcon: SvgPicture.asset(
          'assets/svg/home_active.svg',
          fit: BoxFit.cover,
        ),
        tooltip: 'Home',
      ),
      BottomNavigationBarItem(
        label: "Cart",
        icon: Badge(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 5.0),
          animationType: BadgeAnimationType.scale,
          animationDuration: const Duration(milliseconds: 200),
          badgeContent: const Text(
            '2',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
          child: SvgPicture.asset(
            'assets/svg/cart_inactive.svg',
            fit: BoxFit.cover,
          ),
        ),
        activeIcon: SvgPicture.asset(
          'assets/svg/cart_active.svg',
          fit: BoxFit.cover,
        ),
        tooltip: 'Cart',
      ),
      BottomNavigationBarItem(
        label: "Search",
        icon: SvgPicture.asset(
          'assets/svg/search_inactive.svg',
          fit: BoxFit.cover,
        ),
        activeIcon: SvgPicture.asset(
          'assets/svg/search_inactive.svg',
          fit: BoxFit.cover,
          color: ColorManager.primary,
        ),
        tooltip: 'Search',
      ),
      BottomNavigationBarItem(
        label: "Profile",
        icon: SvgPicture.asset(
          'assets/svg/profile_inactive.svg',
          fit: BoxFit.cover,
        ),
        activeIcon: SvgPicture.asset(
          'assets/svg/profile_active.svg',
          fit: BoxFit.cover,
        ),
        tooltip: 'Profile',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: _getScreens(),
        ),
      ),
      bottomNavigationBar: ValueBuilder<int?>(
        initialValue: 0,
        builder: (snapshot, updater) => BottomNavigationBar(
          currentIndex: snapshot!,
          onTap: (tab) {
            controller.pageController.animateToPage(
              tab,
              duration: controller.animationDuration,
              curve: Curves.ease,
            );
            updater(tab);
          },
          items: _navBarsItems(),
          showSelectedLabels: false,
        ),
      ),
    );
  }
}
