import '../../../../constants/exports.dart';

class AddressDetailsController extends GetxController {
  late TextEditingController addressController;
  late FocusNode addressFocusNode;
  late TextEditingController regionController;
  late FocusNode regionFocusNode;
  late TextEditingController housingTypeController;
  late FocusNode housingTypeFocusNode;
  late TextEditingController apartmentNumberController;
  late FocusNode apartmentNumberFocusNode;
  late GlobalKey<FormState> formKey;
  @override
  void onInit() {
    super.onInit();
    housingTypeController = TextEditingController();
    apartmentNumberController = TextEditingController();
    addressController = TextEditingController();
    regionController = TextEditingController();
    housingTypeFocusNode = FocusNode();
    apartmentNumberFocusNode = FocusNode();
    addressFocusNode = FocusNode();
    regionFocusNode = FocusNode();
    formKey = GlobalKey<FormState>();
  }

  @override
  void onClose() {
    housingTypeController.dispose();
    apartmentNumberController.dispose();
    addressController.dispose();
    regionController.dispose();
    housingTypeFocusNode.dispose();
    apartmentNumberFocusNode.dispose();
    addressFocusNode.dispose();
    regionFocusNode.dispose();
    super.onClose();
  }
}
