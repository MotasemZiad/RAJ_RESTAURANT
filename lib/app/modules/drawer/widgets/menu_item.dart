import '../../../../../constants/exports.dart';

// ignore: must_be_immutable
class MyMenuItem extends StatelessWidget {
  final Widget icon;
  final String title;
  void Function() onTap;
  MyMenuItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            icon,
            SizedBox(
              width: 12.w,
            ),
            PrimaryText(
              title,
              fontSize: 14.sp,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
