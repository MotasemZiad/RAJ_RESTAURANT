import 'package:raj_resturant/constants/exports.dart';

class LanguageWidget extends StatefulWidget {
  const LanguageWidget({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;
  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends State<LanguageWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8.r),
          ),
          border: Border.all(
            color: isSelected ? ColorManager.primary : ColorManager.grey11,
            width: isSelected ? 2.w : 1.w,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isSelected
                ? Container(
                    width: 20.w,
                    height: 20.h,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: ColorManager.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 12.sp,
                    ),
                  )
                : Container(),
            isSelected ? const SizedBox(width: 8) : Container(),
            PrimaryText(
              widget.label,
              fontWeight: FontWeight.w600,
              color: isSelected ? ColorManager.primary : ColorManager.black18,
              fontSize: 14.sp,
            ),
          ],
        ),
      ),
    );
  }
}
