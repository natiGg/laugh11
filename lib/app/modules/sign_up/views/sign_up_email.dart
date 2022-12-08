import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';
import '../controllers/sign_up_controller.dart';
import '../widgets/input_button.dart';
import '../widgets/loading.dart';

class SignUpEmailView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext cdontext) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    )),
              ],
            ),
          ),
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              "assets/image/laugh_bg.jpg",
              fit: BoxFit.cover,
              height: defHeight,
              width: defWidth,
            ),
          ),
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                            child: Get.isDarkMode
                                ? Image.asset(
                                    "assets/image/light_mode.png",
                                    fit: BoxFit.cover,
                                    height: 20.h,
                                    width: 40.w,
                                  )
                                : Image.asset(
                                    "assets/image/light_mode.png",
                                    fit: BoxFit.cover,
                                    height: 20.h,
                                    width: 40.w,
                                  )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Column(
                          children: [
                            MaterialButton(
                                minWidth: double.infinity,
                                height: 45,
                                onPressed: () async {
                                  controller.signInGoogle();
                                },
                                elevation: 2,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/image/google.jpg",
                                        fit: BoxFit.cover,
                                        height: 25,
                                        width: 20),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Continue with google",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15)),
                                  ],
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            MaterialButton(
                                minWidth: double.infinity,
                                height: 45,
                                onPressed: () async {
                                  controller.signInGoogle();
                                },
                                elevation: 2,
                                color: Colors.black,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/image/apple2.png",
                                        fit: BoxFit.cover,
                                        height: 20,
                                        width: 20),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Continue with apple",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15)),
                                  ],
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            MaterialButton(
                                minWidth: double.infinity,
                                height: 45,
                                onPressed: () async {
                                  Get.toNamed("/home");
                                },
                                elevation: 2,
                                color: Color(0xFF1877F2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/image/fb.png",
                                        fit: BoxFit.cover,
                                        height: 20,
                                        width: 20),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Sign in with facebook",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15)),
                                  ],
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Do you have an email?  ",
                                    style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600)),
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed("/SignUpem");
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Obx((() => controller.isLoging.isTrue
                  ? Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[900]!.withOpacity(0.6)),
                      child: Center(
                        child: LoadingDefault(),
                      ))
                  : Container()))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [],
          )
        ],
      ),
    );
  }

  Future signIn() async {}
}
