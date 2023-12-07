import 'package:get/get.dart';

import '../controllers/kategori_pernikahan_controller.dart';

class KategoriPernikahanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KategoriPernikahanController>(
      () => KategoriPernikahanController(),
    );
  }
}
