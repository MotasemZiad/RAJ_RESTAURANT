import 'package:raj_resturant/constants/exports.dart';
import 'package:raj_resturant/generated/locales.g.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({
    Key? key,
    required this.address,
    required this.region,
    required this.street,
    required this.housingType,
    required this.color,
    this.onTap,
  }) : super(key: key);
  final String address;
  final String region;
  final String street;
  final String housingType;
  final Color color;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.0.h,
      width: Get.width,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0.r),
        ),
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: ColorManager.red,
                  ),
                  SizedBox(
                    width: 8.0.w,
                  ),
                  PrimaryText(
                    address,
                    fontSize: 16.sp,
                    color: ColorManager.black47,
                    fontWeight: FontWeight.bold,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: onTap,
                    child: Icon(
                      Icons.more_horiz,
                      color: ColorManager.grey,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8.0.h,
              ),
              PrimaryText(
                "${LocaleKeys.text_fields_region.tr}: $region",
                color: ColorManager.black47,
              ),
              PrimaryText(
                "${LocaleKeys.text_fields_street.tr}: $street",
                color: ColorManager.black47,
              ),
              PrimaryText(
                "${LocaleKeys.text_fields_housing_type.tr}: $housingType",
                color: ColorManager.black47,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
