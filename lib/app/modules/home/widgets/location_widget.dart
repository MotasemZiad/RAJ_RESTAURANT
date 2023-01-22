import '../../../../constants/exports.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    this.onTap,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.primary.withOpacity(0.12),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        padding: EdgeInsets.all(16.w),
        height: 100.h,
        child: Row(
          children: [
            Icon(
              Icons.location_on,
              color: ColorManager.accent,
              size: 30.w,
            ),
            SizedBox(width: 12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryText(
                  title,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
                PrimaryText(
                  subtitle,
                ),
              ],
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: ColorManager.accent,
            ),
          ],
        ),
      ),
    );
  }
}
