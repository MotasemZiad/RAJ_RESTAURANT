import 'package:raj_resturant/app/modules/my_orders/widgets/order_item.dart';
import 'package:raj_resturant/app/modules/my_orders/widgets/order_widget.dart';
import 'package:raj_resturant/constants/exports.dart';

import 'package:raj_resturant/generated/locales.g.dart';

import '../controllers/my_orders_controller.dart';
import 'dart:math' as math;

class MyOrdersView extends GetView<MyOrdersController> {
  const MyOrdersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.navigation_drawer_my_orders.tr),
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            margin: EdgeInsets.only(left: 16.0.w, right: 16.0.w, top: 8.0.h),
            child: Column(
              children: [
                SizedBox(
                  height: 20.0.h,
                ),
                OrderWidget(
                  status: LocaleKeys.text_in_progress.tr,
                  items: [
                    const OrderItem(
                      title: 'دجاج بيبر',
                      image: 'assets/images/meal_1.png',
                      price: 35,
                      quantity: 1,
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    const OrderItem(
                      title: 'دجاج بيبر',
                      image: 'assets/images/meal_2.png',
                      price: 28,
                      quantity: 2,
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    const OrderItem(
                      title: 'دجاج بيبر',
                      image: 'assets/images/meal_2.png',
                      price: 28,
                      quantity: 2,
                    ),
                  ],
                  date: "28/11/2022",
                  address: "السعودية، الرياض، شارع الملك فيصل",
                ),
                SizedBox(
                  height: 12.0.h,
                ),
                OrderWidget(
                  status: LocaleKeys.text_completed.tr,
                  items: [
                    const OrderItem(
                      title: 'دجاج بيبر',
                      image: 'assets/images/meal_1.png',
                      price: 35,
                      quantity: 1,
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    const OrderItem(
                      title: 'دجاج بيبر',
                      image: 'assets/images/meal_2.png',
                      price: 28,
                      quantity: 2,
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    const OrderItem(
                      title: 'دجاج بيبر',
                      image: 'assets/images/meal_2.png',
                      price: 28,
                      quantity: 2,
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    const OrderItem(
                      title: 'دجاج بيبر',
                      image: 'assets/images/meal_2.png',
                      price: 46,
                      quantity: 6,
                    ),
                  ],
                  date: "27/01/2022",
                  address: "السعودية، الرياض، شارع الملك فيصل",
                ),
              ],
            ),
          ),
          Positioned(
            child: Transform.rotate(
              angle: 180 * math.pi / 180,
              child: SvgPicture.asset('assets/svg/top_pattern.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
