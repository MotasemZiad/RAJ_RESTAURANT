import 'package:raj_resturant/constants/exports.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 55.h,
              width: 55.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: ColorManager.grey),
              ),
              padding: EdgeInsets.all(2.h),
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/default_profile.png",
                ),
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryText(
                  "أحمد منصور",
                  color: ColorManager.black18,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
                PrimaryText(
                  "+970598256535",
                  color: ColorManager.black18,
                  fontSize: 12.sp,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
