import '../../constants/exports.dart';

class PrimaryTextField extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onTap;
  final Function(String)? onFieldSubmitted;
  final bool readOnly;
  final bool? multiLines;
  final TextInputAction? textInputAction;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final double leftOrRightPadding;
  final int noOfLines;
  final int? maxLength;
  final FocusNode focusNode;

  const PrimaryTextField({
    Key? key,
    this.hintText,
    required this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.onTap,
    this.focusedBorder,
    this.noOfLines = 10,
    this.enabledBorder,
    this.readOnly = false,
    this.onFieldSubmitted,
    this.suffixIcon,
    this.multiLines = false,
    this.leftOrRightPadding = 20,
    this.textInputAction = TextInputAction.none,
    this.maxLength,
    required this.focusNode,
  }) : super(key: key);

  @override
  State<PrimaryTextField> createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField> {
  Color color = ColorManager.white;
  Color borderColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    widget.focusNode.addListener(() {
      if (widget.focusNode.hasFocus) {
        color = Colors.white;
        borderColor = ColorManager.primary;
      } else {
        color = ColorManager.white;
        borderColor = Colors.transparent;
      }
      setState(() {});
    });

    TextStyle hintStyle = TextStyle(
      color: ColorManager.greyC1,
      fontSize: 14.sp,
      fontWeight: FontWeightManager.bold,
      fontFamily: FontConstants.fontFamily,
    );

    TextStyle style = TextStyle(
      color: ColorManager.primary,
      fontSize: 14.sp,
      fontWeight: FontWeightManager.bold,
      fontFamily: FontConstants.fontFamily,
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.h)),
          color: color,
          border: Border.all(color: borderColor)),
      height: widget.multiLines! ? 150.h : 50.h,
      child: Center(
        child: TextFormField(
          focusNode: widget.focusNode,
          controller: widget.controller,
          maxLength: widget.maxLength,
          readOnly: widget.readOnly,
          textInputAction: widget.textInputAction,
          maxLines: widget.multiLines! ? widget.noOfLines : 1,
          cursorColor: ColorManager.fontColor,
          style: style,
          keyboardType: widget.keyboardType,
          onTap: widget.onTap ?? () {},
          onFieldSubmitted: widget.onFieldSubmitted ?? (String value) {},
          decoration: InputDecoration(
            suffixIcon: widget.suffixIcon,
            counter: const Offstage(),
            prefixIcon: widget.prefixIcon != null
                ? Padding(
                    padding: EdgeInsets.only(
                      right: Get.locale == const Locale("en") ? 12.w : 0.0,
                      left: Get.locale == const Locale("ar") ? 12.w : 0.0,
                    ),
                    child: widget.prefixIcon,
                  )
                : null,
            focusColor: ColorManager.primary,
            prefixIconConstraints: BoxConstraints(
              minWidth: 25.w,
            ),
            suffixIconConstraints: BoxConstraints(
              minWidth: 25.w,
            ),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hoverColor: ColorManager.primary,
            hintText: widget.hintText ?? "",
            hintStyle: hintStyle,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: ColorManager.grey),
            ),
            contentPadding: EdgeInsets.only(
              top: 0.h,
              left: Get.locale != const Locale("ar")
                  ? widget.leftOrRightPadding.h
                  : 0.h,
              right: Get.locale != const Locale("ar")
                  ? 0.h
                  : widget.leftOrRightPadding.h,
            ),
          ),
          validator: widget.validator ??
              (String? value) {
                return null;
              },
        ),
      ),
    );
  }
}
