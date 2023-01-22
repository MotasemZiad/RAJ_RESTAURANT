import 'package:raj_resturant/constants/exports.dart';

class LoginController extends GetxController {
  late TextEditingController phoneController;
  late FocusNode phoneFocusNode;
  late TextEditingController passwordController;
  late FocusNode passwordFocusNode;
  late GlobalKey<FormState> formKey;
  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    phoneFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    formKey = GlobalKey<FormState>();
  }

  @override
  void onClose() {
    phoneController.dispose();
    passwordController.dispose();
    phoneFocusNode.dispose();
    passwordFocusNode.dispose();
    super.onClose();
  }
}
