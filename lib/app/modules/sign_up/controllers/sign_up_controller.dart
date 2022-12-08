import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:laugh1/app/data/google_signinapi.dart';

class SignUpController extends GetxController {
  //TODO: Implement SignUpController

  final count = 0.obs;
  RxBool isLoging = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  Future signInGoogle() async {
    isLoging(true);
    final user = await GoogleSignInApi.login();
    print("natfdfi" + user!.displayName!.toString());
    isLoging(false);
    if (user.displayName!.isNotEmpty) {
      Get.toNamed("/home", arguments: user);
      isLoging(false);
    }
    isLoging(false);
  }

  Future signOutGoogle() async {
    isLoging(true);
    await Future.delayed(Duration(milliseconds: 4000));
    final user = await GoogleSignInApi.logout();

    isLoging(false);
    Get.offAllNamed("/sign-up-social");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
