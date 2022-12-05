import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:laugh1/app/themes/theme_controller.dart';
import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  final introKey = GlobalKey<IntroductionScreenState>();
  final themeController = Get.find<ThemeController>();
  void _onIntroEnd(context) {
    themeController.firstTime(true);
    Get.toNamed("/sign-up-social");
  }

  Widget _buildImage(String assetName, [double width = 250]) {
    return Image.asset('assets/image/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0, color: primaryColor);

    final pageDecoration = PageDecoration(
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 28.0.sp,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 15.0, 16.0, 16.0),
      imagePadding: EdgeInsets.all(10),
    );

    return IntroductionScreen(
      key: introKey,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: Text(
              "skip",
            ),
          ),
        ),
      ),

      globalFooter: Padding(
        padding: const EdgeInsets.all(25.0),
        child: MaterialButton(
            minWidth: double.infinity,
            height: 45,
            onPressed: () => _onIntroEnd(context),
            elevation: 2,
            color: Colors.amber,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Get Started",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15)),
              ],
            )),
      ),
      pages: [
        PageViewModel(
          title: "Laugh all day",
          body: "",
          image: _buildImage('laughing2.gif'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Find out jokes",
          body: "",
          image: _buildImage('laughing2.gif'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Discover the most unfunny jokes ",
          body: "",
          image: _buildImage('notfunny.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      skipOrBackFlex: 0,
      showNextButton: false,
      showBackButton: false,
      showDoneButton: false,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),

      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        activeColor: Get.isDarkMode ? Colors.white : Colors.black,
        activeSize: Size(10.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
