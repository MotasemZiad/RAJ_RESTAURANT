import 'package:raj_resturant/constants/exports.dart';

class RegisterController extends GetxController {
  late TextEditingController emailController;
  late FocusNode emailFocusNode;
  late TextEditingController nameController;
  late FocusNode nameFocusNode;
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
    emailController = TextEditingController();
    nameController = TextEditingController();
    phoneFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    emailFocusNode = FocusNode();
    nameFocusNode = FocusNode();
    formKey = GlobalKey<FormState>();
  }

  @override
  void onClose() {
    phoneController.dispose();
    passwordController.dispose();
    emailController.dispose();
    nameController.dispose();
    phoneFocusNode.dispose();
    passwordFocusNode.dispose();
    emailFocusNode.dispose();
    nameFocusNode.dispose();
    super.onClose();
  }
}
