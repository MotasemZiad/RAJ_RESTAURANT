import '../../../../constants/exports.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.title,
    required this.image,
    this.onTap,
  }) : super(key: key);
  final String title;
  final String image;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 110.w,
        height: 130.h,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: ColorManager.primary.withOpacity(0.12),
                ),
                width: 110.w,
                height: 130.h,
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      width: 110.w,
                      height: 90.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0.h),
                    child: PrimaryText(
                      title,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
