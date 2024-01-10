import 'package:get/get.dart';

import '../controllers/termsofservice_controller.dart';

class TermsofserviceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TermsofserviceController>(
      () => TermsofserviceController(),
    );
  }
}
