import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';
import '../controllers/sign_up_controller.dart';
import '../widgets/input_button.dart';

class SignUpEmailView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext cdontext) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios,
                        size: 20, color: Colors.black)),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text("Skip",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          )),
                    )),
              ],
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Container(
                child: Image.asset(
              "assets/image/laugh_bg.jpg",
              fit: BoxFit.cover,
              height: defHeight,
              width: defWidth,
            )),
          ),
          Container(
            decoration: const BoxDecoration(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Laugh1",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      children: [
                        MaterialButton(
                            minWidth: double.infinity,
                            height: 45,
                            onPressed: () async {},
                            elevation: 2,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/image/google.jpg",
                                    fit: BoxFit.cover, height: 25, width: 20),
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
                            onPressed: () async {},
                            elevation: 2,
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/image/apple2.png",
                                    fit: BoxFit.cover, height: 20, width: 20),
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
                                    fit: BoxFit.cover, height: 20, width: 20),
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
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Center(
          //       child: Image.asset(
          //         "assets/image/logo.jpg",
          //         height: 100,
          //         width: 100,
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }

  Future signIn() async {}
}
