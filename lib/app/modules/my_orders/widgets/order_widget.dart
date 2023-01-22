import 'package:raj_resturant/constants/exports.dart';
import 'package:raj_resturant/generated/locales.g.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({
    Key? key,
    required this.status,
    required this.items,
    required this.date,
    required this.address,
  }) : super(key: key);

  final String status;
  final List<Widget> items;
  final String date;
  final String address;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0.h,
      width: Get.width,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0.r),
        ),
        color: ColorManager.white,
        child: Padding(
          padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w, top: 8.0.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: ColorManager.red,
                    ),
                    SizedBox(
                      width: 8.0.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PrimaryText(
                          LocaleKeys.text_home_address.tr,
                          fontSize: 14.sp,
                          color: ColorManager.black47,
                          fontWeight: FontWeight.bold,
                        ),
                        PrimaryText(
                          address,
                          color: ColorManager.black47,
                        ),
                        PrimaryText(
                          date,
                          color: ColorManager.black47,
                          fontSize: 14.sp,
                          fontWeight: FontWeightManager.bold,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: status == LocaleKeys.text_in_progress.tr
                            ? ColorManager.primary
                            : ColorManager.green,
                        borderRadius: BorderRadius.circular(8.0.r),
                      ),
                      width: 100.w,
                      height: 30.h,
                      child: PrimaryText(
                        status,
                        color: ColorManager.white,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.0.h,
                ),
                ListView(
                  addAutomaticKeepAlives: false,
                  addRepaintBoundaries: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  children: items,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
