import 'package:raj_resturant/constants/exports.dart';

class ChangePasswordController extends GetxController {
  late TextEditingController oldPasswordController;
  late FocusNode oldPasswordFocusNode;
  late TextEditingController newPasswordController;
  late FocusNode newPasswordFocusNode;
  late TextEditingController confirmNewPasswordController;
  late FocusNode confirmNewPasswordFocusNode;
  late GlobalKey<FormState> formKey;
  @override
  void onInit() {
    super.onInit();
    confirmNewPasswordController = TextEditingController();
    oldPasswordController = TextEditingController();
    newPasswordController = TextEditingController();
    confirmNewPasswordFocusNode = FocusNode();
    oldPasswordFocusNode = FocusNode();
    newPasswordFocusNode = FocusNode();
    formKey = GlobalKey<FormState>();
  }

  @override
  void onClose() {
    confirmNewPasswordController.dispose();
    oldPasswordController.dispose();
    newPasswordController.dispose();
    confirmNewPasswordFocusNode.dispose();
    oldPasswordFocusNode.dispose();
    newPasswordFocusNode.dispose();
    super.onClose();
  }
}
