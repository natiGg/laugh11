import 'package:get/get.dart';

import '../controllers/error_pages_controller.dart';

class ErrorPagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ErrorPagesController>(
      () => ErrorPagesController(),
    );
  }
}
