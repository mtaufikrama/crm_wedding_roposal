import 'package:get/get.dart';

import '../controllers/favorite2_controller.dart';

class Favorite2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Favorite2Controller>(
      () => Favorite2Controller(),
    );
  }
}
