import 'package:raj_resturant/constants/exports.dart';

class CompliancesAndSuggestionsController extends GetxController {
  late TextEditingController emailController;
  late FocusNode emailFocusNode;
  late TextEditingController nameController;
  late FocusNode nameFocusNode;
  late TextEditingController textController;
  late FocusNode textFocusNode;
  late GlobalKey<FormState> formKey;
  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    textController = TextEditingController();
    textFocusNode = FocusNode();
    emailFocusNode = FocusNode();
    nameFocusNode = FocusNode();
    formKey = GlobalKey<FormState>();
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    textController.dispose();
    emailFocusNode.dispose();
    nameFocusNode.dispose();
    textFocusNode.dispose();
    super.onClose();
  }
}
