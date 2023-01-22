import 'package:raj_resturant/constants/exports.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    Key? key,
    required this.title,
    required this.leading,
    required this.backgroundColor,
    this.trailing = const SizedBox(),
    this.onTap,
    this.isTrailing = false,
  }) : super(key: key);

  final String title;
  final String leading;
  final Widget? trailing;
  final Function()? onTap;
  final bool isTrailing;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8.r),
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 40.h,
              width: 35.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: backgroundColor,
              ),
              child: SvgPicture.asset(
                leading,
                fit: BoxFit.scaleDown,
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            PrimaryText(
              title,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            const Spacer(),
            isTrailing
                ? trailing!
                : Icon(
                    Icons.arrow_forward_ios,
                    color: ColorManager.grey,
                  ),
          ],
        ),
      ),
    );
  }
}
