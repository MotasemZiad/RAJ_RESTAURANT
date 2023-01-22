import 'package:raj_resturant/constants/exports.dart';
import 'package:raj_resturant/generated/locales.g.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.quantity,
  }) : super(key: key);
  final String title;
  final String image;
  final double price;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 60.w,
          height: 60.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0.r),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 8.0.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              title,
              color: ColorManager.black47,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
            PrimaryText(
              "${LocaleKeys.text_piece.tr}: $quantity",
              fontSize: 10.sp,
              color: ColorManager.black47,
            ),
          ],
        ),
        const Spacer(),
        PrimaryText(
          "${price.toStringAsFixed(2)} SR",
          color: ColorManager.black47,
          fontWeight: FontWeightManager.bold,
        ),
      ],
    );
  }
}
