import 'package:raj_resturant/constants/exports.dart';

class CustomListTileWidget extends StatelessWidget {
  const CustomListTileWidget({
    Key? key,
    required this.label,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final String label;
  final String icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: ColorManager.borderGrey,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Container(
              width: 40.w,
              height: 40.h,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                icon,
              ),
            ),
          ),
          SizedBox(
            width: 16.0.w,
          ),
          PrimaryText(
            label,
            fontSize: 16.0.sp,
          ),
        ],
      ),
    );
  }
}
