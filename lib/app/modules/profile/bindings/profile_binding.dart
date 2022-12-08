import 'package:get/get.dart';
import 'package:laugh1/app/modules/sign_up/controllers/sign_up_controller.dart';

import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut(() => SignUpController());
  }
}
