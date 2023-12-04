import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboard_landing/bindings/onboard_landing_binding.dart';
import '../modules/onboard_landing/views/onboard_landing_view.dart';

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
  ];
}
