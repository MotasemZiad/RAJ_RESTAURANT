import 'package:get/get.dart';

import '../controllers/compliances_and_suggestions_controller.dart';

class CompliancesAndSuggestionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompliancesAndSuggestionsController>(
      () => CompliancesAndSuggestionsController(),
    );
  }
}
