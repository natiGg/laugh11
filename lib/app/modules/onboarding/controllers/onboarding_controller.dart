import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:laugh1/app/themes/theme_controller.dart';

class OnboardingController extends GetxController {
  //TODO: Implement OnboardingController
  final themeController = Get.find<ThemeController>();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
