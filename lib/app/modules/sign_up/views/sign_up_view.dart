import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';
import '../controllers/sign_up_controller.dart';
import '../widgets/input_button.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.15,
            child: Container(
                child: Image.asset(
              "assets/image/laugh_bg.jpg",
              fit: BoxFit.cover,
              height: defHeight,
              width: defWidth,
            )),
          ),
          ListView(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(Icons.arrow_back_ios,
                          size: 20, color: Colors.black))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "መንጃ",
                        style: TextStyle(
                            fontFamily: "Jiret",
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 35),
                      ),
                      SizedBox(
                        height: 20,
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
                            makeInput(
                              label: "Confirm Password",
                              obscuretext: true,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Button2(
                              type: "Sign up",
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account? ",
                                    style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600)),
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed("/signup");
                                  },
                                  child: Text(
                                    "Login",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
