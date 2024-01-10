import 'package:get/get.dart';

import '../modules/about/bindings/about_binding.dart';
import '../modules/about/views/about_view.dart';
import '../modules/detail_tema/bindings/detail_tema_binding.dart';
import '../modules/detail_tema/views/detail_tema_view.dart';
import '../modules/drafkunjungan/bindings/drafkunjungan_binding.dart';
import '../modules/drafkunjungan/views/drafkunjungan_view.dart';
import '../modules/editprofile/bindings/editprofile_binding.dart';
import '../modules/editprofile/views/editprofile_view.dart';
import '../modules/favorite/bindings/favorite_binding.dart';
import '../modules/favorite/views/favorite_view.dart';
import '../modules/favorite2/bindings/favorite2_binding.dart';
import '../modules/favorite2/views/favorite2_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kategori_pernikahan/bindings/kategori_pernikahan_binding.dart';
import '../modules/kategori_pernikahan/views/kategori_pernikahan_view.dart';
import '../modules/keranjang/bindings/keranjang_binding.dart';
import '../modules/keranjang/views/keranjang_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/onboard_landing/bindings/onboard_landing_binding.dart';
import '../modules/onboard_landing/views/onboard_landing_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/riwayat/bindings/riwayat_binding.dart';
import '../modules/riwayat/views/riwayat_view.dart';
import '../modules/tentangkami/bindings/tentangkami_binding.dart';
import '../modules/tentangkami/views/tentangkami_view.dart';
import '../modules/termsofservice/bindings/termsofservice_binding.dart';
import '../modules/termsofservice/views/termsofservice_view.dart';
import '../modules/ulasan/bindings/ulasan_binding.dart';
import '../modules/ulasan/views/ulasan_view.dart';
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
    GetPage(
      name: _Paths.FAVORITE,
      page: () => FavoriteView(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT,
      page: () => const RiwayatView(),
      binding: RiwayatBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.KERANJANG,
      page: () => const KeranjangView(),
      binding: KeranjangBinding(),
    ),
    GetPage(
      name: _Paths.DRAFKUNJUNGAN,
      page: () => const DrafkunjunganView(),
      binding: DrafkunjunganBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE2,
      page: () => const Favorite2View(),
      binding: Favorite2Binding(),
    ),
    GetPage(
      name: _Paths.ULASAN,
      page: () => const UlasanView(),
      binding: UlasanBinding(),
    ),
    GetPage(
      name: _Paths.TENTANGKAMI,
      page: () => const TentangkamiView(),
      binding: TentangkamiBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => const AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.TERMSOFSERVICE,
      page: () => const TermsofserviceView(),
      binding: TermsofserviceBinding(),
    ),
    GetPage(
      name: _Paths.EDITPROFILE,
      page: () => const EditprofileView(),
      binding: EditprofileBinding(),
    ),
  ];
}
