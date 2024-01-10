import 'package:get/get.dart';

import '../controllers/drafkunjungan_controller.dart';

class DrafkunjunganBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DrafkunjunganController>(
      () => DrafkunjunganController(),
    );
  }
}
