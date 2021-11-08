import 'package:get/get.dart';

import 'package:fcmfl/app/modules/green/bindings/green_binding.dart';
import 'package:fcmfl/app/modules/green/views/green_view.dart';
import 'package:fcmfl/app/modules/home/bindings/home_binding.dart';
import 'package:fcmfl/app/modules/home/views/home_view.dart';
import 'package:fcmfl/app/modules/red/bindings/red_binding.dart';
import 'package:fcmfl/app/modules/red/views/red_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.GREEN,
      page: () => const GreenView(),
      binding: GreenBinding(),
    ),
    GetPage(
      name: _Paths.RED,
      page: () => const RedView(),
      binding: RedBinding(),
    ),
  ];
}
