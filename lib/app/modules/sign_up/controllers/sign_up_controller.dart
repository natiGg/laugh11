import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:laugh1/app/data/dioclient.dart';
import 'package:laugh1/app/data/google_signinapi.dart';

class SignUpController extends GetxController {
  //TODO: Implement SignUpController

  final count = 0.obs;
  var token;
  RxBool isLoging = false.obs;
  DioClient _dioClient = DioClient();
  @override
  void onInit() {
    super.onInit();
  }

  Future signInGoogle() async {
    isLoging(true);
    final user = await GoogleSignInApi.login();

    token = await user!.authentication.then((value) {
      return value.accessToken;
    });
    print("lolol" + token);
    try {
      var params = {
        "auth_token": token,
      };

      final response = _dioClient.dio.post(
        "http://192.168.1.12:8000/social_auth/google/",
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        }),
        data: jsonEncode(params),
      );
      print(response);
    } catch (e) {
      print(e);
    }

    if (user.displayName!.isNotEmpty) {
      print("okoko" +
          user.authentication.then((value) => value.accessToken).toString());
      Get.toNamed("/home", arguments: user);
      isLoging(false);
    } else {
      isLoging(false);
    }
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
