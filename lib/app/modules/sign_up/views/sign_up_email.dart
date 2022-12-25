import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            opacity: 0.3,
            child: Image.network(
              "https://uploads.codesandbox.io/uploads/user/82fa41fe-2514-4525-afb4-b7eef7e3afc6/BFmQ-bg-01-top.png",
              fit: BoxFit.cover,
              height: defHeight - 10.h,
              width: defWidth - 10.h,
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
                                      "assets/image/dark_mode.png",
                                      fit: BoxFit.cover,
                                      height: 20.h,
                                      width: 40.w,
                                    )
                                  : Image.asset(
                                      "assets/image/dark_mode.png",
                                      fit: BoxFit.cover,
                                      height: 20.h,
                                      width: 40.w,
                                    )),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Column(
                            children: [
                              makeInput(
                                label: "email",
                                obscuretext: false,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              makeInput(
                                label: "Password",
                                obscuretext: true,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Button2(
                                type: "Login",
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Don't have an account? "),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed("/SignUpem");
                                    },
                                    child: Text(
                                      "Sign Up",
                                      style: GoogleFonts.poppins(
                                          color: primaryColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Divider(),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text("Continue with Social",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15)),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        controller.signInGoogle();
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                "assets/image/google.jpg",
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 20),
                                          ],
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: Size(double.infinity, 45.0),
                                        primary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                "assets/image/apple2.png",
                                                fit: BoxFit.cover,
                                                height: 20,
                                                width: 20),
                                          ],
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: Size(double.infinity, 45.0),
                                        primary: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset("assets/image/fb.png",
                                                fit: BoxFit.cover,
                                                height: 20,
                                                width: 20),
                                          ],
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: Size(double.infinity, 45.0),
                                        primary: Color(0xFF1877F2),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]))),
              Obx((() => controller.isLoging.isTrue
                  ? Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[900]!.withOpacity(0.4)),
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
