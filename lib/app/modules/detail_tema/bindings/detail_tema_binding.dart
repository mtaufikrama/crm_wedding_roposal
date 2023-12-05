import 'package:get/get.dart';

import '../controllers/detail_tema_controller.dart';

class DetailTemaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailTemaController>(
      () => DetailTemaController(),
    );
  }
}
