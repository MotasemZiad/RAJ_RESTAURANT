import '../../constants/exports.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    Key? key,
    this.title,
    this.subtitle,
    this.onTap,
  }) : super(key: key);

  final String? title;
  final String? subtitle;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              title ?? "",
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            PrimaryText(
              subtitle ?? "",
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        GestureDetector(
          onTap: onTap,
          child: SvgPicture.asset(
            'assets/svg/navigation_icon.svg',
          ),
        ),
      ],
    );
  }
}
