import 'package:raj_resturant/app/modules/boarding/widgets/boarding_item.dart';
import 'package:raj_resturant/app/modules/home/widgets/category_widget.dart';
import 'package:raj_resturant/app/modules/home/widgets/meal_widget.dart';
import 'package:raj_resturant/app/routes/app_pages.dart';
import 'package:raj_resturant/constants/exports.dart';
import 'package:raj_resturant/generated/locales.g.dart';

const String dummyImage =
    "https://t4.ftcdn.net/jpg/04/70/29/97/360_F_470299797_UD0eoVMMSUbHCcNJCdv2t8B2g1GVqYgs.jpg";
const List<Widget> carouselSlider = [
  BoardingItem(
    title: LocaleKeys.onboarding1_title,
    description: LocaleKeys.onboarding1_description,
    image: 'assets/svg/on_boarding1.svg',
  ),
  BoardingItem(
    title: LocaleKeys.onboarding2_title,
    description: LocaleKeys.onboarding2_description,
    image: 'assets/svg/on_boarding1.svg',
  ),
  BoardingItem(
    title: LocaleKeys.onboarding3_title,
    description: LocaleKeys.onboarding3_description,
    image: 'assets/svg/on_boarding1.svg',
  ),
];

final List<Widget> dummyCategories = [
  CategoryWidget(
    title: "الشوربة",
    image: "assets/images/category_1.png",
    onTap: () => Get.toNamed(Routes.CATEGORY),
  ),
  SizedBox(width: 8.0.w),
  CategoryWidget(
    title: "المقبلات",
    image: "assets/images/category_2.png",
    onTap: () => Get.toNamed(Routes.CATEGORY),
  ),
  SizedBox(width: 8.0.w),
  CategoryWidget(
    title: "الخضار",
    image: "assets/images/category_3.png",
    onTap: () => Get.toNamed(Routes.CATEGORY),
  ),
  SizedBox(width: 8.0.w),
  CategoryWidget(
    title: "الحلويات",
    image: "assets/images/category_1.png",
    onTap: () => Get.toNamed(Routes.CATEGORY),
  ),
  SizedBox(width: 8.0.w),
  CategoryWidget(
    title: "العصائر",
    image: "assets/images/category_1.png",
    onTap: () => Get.toNamed(Routes.CATEGORY),
  ),
  SizedBox(width: 8.0.w),
  CategoryWidget(
    title: "اللحوم",
    image: "assets/images/category_1.png",
    onTap: () => Get.toNamed(Routes.CATEGORY),
  ),
];

final List<Widget> dummyMeals = [
  MealWidget(
    title: "دجاج تشيلي",
    price: 34,
    rating: 4.5,
    image: "assets/images/meal_1.png",
    onTap: () => Get.toNamed(Routes.MEAL),
  ),
  SizedBox(width: 8.0.w),
  MealWidget(
    title: "دجاج بيبر",
    price: 28,
    rating: 4.8,
    image: "assets/images/meal_2.png",
    onTap: () => Get.toNamed(Routes.MEAL),
  ),
  SizedBox(width: 8.0.w),
  MealWidget(
    title: "الخضار",
    price: 32,
    rating: 5.0,
    image: "assets/images/meal_3.png",
    onTap: () => Get.toNamed(Routes.MEAL),
  ),
  SizedBox(width: 8.0.w),
  MealWidget(
    title: "الحلويات",
    price: 34,
    rating: 4.5,
    image: "assets/images/category_1.png",
    onTap: () => Get.toNamed(Routes.MEAL),
  ),
  SizedBox(width: 8.0.w),
  MealWidget(
    title: "العصائر",
    price: 34,
    rating: 4.5,
    image: "assets/images/category_1.png",
    onTap: () => Get.toNamed(Routes.MEAL),
  ),
  SizedBox(width: 8.0.w),
  MealWidget(
    title: "اللحوم",
    price: 34,
    rating: 4.5,
    image: "assets/images/category_1.png",
    onTap: () => Get.toNamed(Routes.MEAL),
  ),
];
