import '../../../../constants/exports.dart';

class MealWidget extends StatelessWidget {
  const MealWidget({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
    this.onTap,
  }) : super(key: key);

  final String title;
  final String image;
  final int price;
  final double rating;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 160.w,
        height: 220.h,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          clipBehavior: Clip.hardEdge,
          child: Card(
            elevation: 1.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  width: 160.w,
                  height: 220.h,
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                        width: 160.w,
                        height: 140.h,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.only(
                        right: 10.w,
                        top: 5.h,
                      ),
                      child: PrimaryText(
                        title,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: Get.locale!.languageCode == "ar"
                              ? EdgeInsets.only(right: 4.0.w)
                              : EdgeInsets.only(left: 4.0.w),
                          child: PrimaryText(
                            'SR ${price.toString()}',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: ColorManager.accent,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: ColorManager.primary,
                              size: 16.sp,
                            ),
                            Padding(
                              padding: Get.locale!.languageCode == "ar"
                                  ? EdgeInsets.only(left: 8.0.w)
                                  : EdgeInsets.only(right: 8.0.w),
                              child: PrimaryText(
                                rating.toString(),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
