import 'package:get/get.dart';

import '../modules/detail_tema/bindings/detail_tema_binding.dart';
import '../modules/detail_tema/views/detail_tema_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kategori_pernikahan/bindings/kategori_pernikahan_binding.dart';
import '../modules/kategori_pernikahan/views/kategori_pernikahan_view.dart';
import '../modules/onboard_landing/bindings/onboard_landing_binding.dart';
import '../modules/onboard_landing/views/onboard_landing_view.dart';
import '../modules/webview/bindings/webview_binding.dart';
import '../modules/webview/views/webview_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARD_LANDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARD_LANDING,
      page: () => OnboardLandingView(),
      binding: OnboardLandingBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_TEMA,
      page: () => const DetailTemaView(),
      binding: DetailTemaBinding(),
    ),
    GetPage(
      name: _Paths.KATEGORI_PERNIKAHAN,
      page: () => const KategoriPernikahanView(),
      binding: KategoriPernikahanBinding(),
    ),
    GetPage(
      name: _Paths.WEBVIEW,
      page: () => WebviewView(
        url: '',
      ),
      binding: WebviewBinding(),
    ),
  ];
}
