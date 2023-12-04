import 'package:get/get.dart';

import '../controllers/onboard_landing_controller.dart';

class OnboardLandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardLandingController>(
      () => OnboardLandingController(),
    );
  }
}
