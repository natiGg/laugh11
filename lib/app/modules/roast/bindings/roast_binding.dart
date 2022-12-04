import 'package:get/get.dart';

import '../controllers/roast_controller.dart';

class RoastBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoastController>(
      () => RoastController(),
    );
  }
}
