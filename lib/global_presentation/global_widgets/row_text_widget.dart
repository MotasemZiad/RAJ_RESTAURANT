import '../../constants/exports.dart';

class RowTextWidget extends StatelessWidget {
  const RowTextWidget({
    Key? key,
    required this.leadingTitle,
    required this.trailingTitle,
    this.onTap,
  }) : super(key: key);
  final String leadingTitle;
  final String trailingTitle;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        PrimaryText(
          leadingTitle,
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          color: ColorManager.black18,
        ),
        GestureDetector(
          onTap: onTap,
          child: PrimaryText(
            trailingTitle,
          ),
        ),
      ],
    );
  }
}
