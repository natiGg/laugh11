import 'package:get/get.dart';

import 'package:laugh1/app/modules/error_pages/bindings/error_pages_binding.dart';
import 'package:laugh1/app/modules/error_pages/views/error_pages_view.dart';
import 'package:laugh1/app/modules/home/bindings/home_binding.dart';
import 'package:laugh1/app/modules/home/views/home_view.dart';
import 'package:laugh1/app/modules/notifications/bindings/notifications_binding.dart';
import 'package:laugh1/app/modules/notifications/views/notifications_view.dart';
import 'package:laugh1/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:laugh1/app/modules/onboarding/views/onboarding_view.dart';
import 'package:laugh1/app/modules/profile/bindings/profile_binding.dart';
import 'package:laugh1/app/modules/profile/views/profile_view.dart';
import 'package:laugh1/app/modules/roast/bindings/roast_binding.dart';
import 'package:laugh1/app/modules/roast/views/roast_view.dart';
import 'package:laugh1/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:laugh1/app/modules/sign_up/views/sign_up_view.dart';
import 'package:laugh1/app/modules/splash/bindings/splash_binding.dart';
import 'package:laugh1/app/modules/splash/views/splash_view.dart';
import 'package:laugh1/app/themes/theme_controller.dart';

import '../modules/sign_up/views/sign_up_email.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;
  static const ERROR = Routes.ERROR_PAGES;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: _Paths.SPLASH,
        page: () => SplashView(),
        binding: SplashBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: _Paths.ONBOARDING,
        page: () => OnboardingView(),
        binding: OnboardingBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: _Paths.PROFILE,
        page: () => ProfileView(),
        binding: ProfileBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: _Paths.NOTIFICATIONS,
        page: () => NotificationsView(),
        binding: NotificationsBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: _Paths.SIGN_UP,
        page: () => SignUpView(),
        binding: SignUpBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: _Paths.SIGN_UP_EMAIL,
        page: () => SignUpEmailView(),
        binding: SignUpBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: _Paths.ROAST,
        page: () => RoastView(),
        binding: RoastBinding(),
        transition: Transition.fadeIn),
    GetPage(
      name: _Paths.ERROR_PAGES,
      page: () => ErrorPagesView(),
      binding: ErrorPagesBinding(),
    ),
  ];
}
