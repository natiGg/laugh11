import 'package:get/get.dart';

import 'package:laugh1/app/modules/home/bindings/home_binding.dart';
import 'package:laugh1/app/modules/home/views/home_view.dart';
import 'package:laugh1/app/modules/notifications/bindings/notifications_binding.dart';
import 'package:laugh1/app/modules/notifications/views/notifications_view.dart';
import 'package:laugh1/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:laugh1/app/modules/onboarding/views/onboarding_view.dart';
import 'package:laugh1/app/modules/profile/bindings/profile_binding.dart';
import 'package:laugh1/app/modules/profile/views/profile_view.dart';
import 'package:laugh1/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:laugh1/app/modules/sign_up/views/sign_up_view.dart';
import 'package:laugh1/app/modules/splash/bindings/splash_binding.dart';
import 'package:laugh1/app/modules/splash/views/splash_view.dart';

import '../modules/sign_up/views/sign_up_email.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP_EMAIL,
      page: () => SignUpEmailView(),
      binding: SignUpBinding(),
    ),
  ];
}
