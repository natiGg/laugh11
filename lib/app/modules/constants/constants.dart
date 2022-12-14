import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

final defHeight = MediaQuery.of(Get.context!).size.height;
final defWidth = MediaQuery.of(Get.context!).size.height;
const Color primaryColor = Color(0xFF001131);
const Color secondaryColor = Color(0xFFF9DE26);

// Colors
const kTextColor = Color(0xFF0D1333);
const kBlueColor = Color(0xFF6E8AFA);
const kBestSellerColor = Color(0xFFFFD073);
const kGreenColors = Color(0xFF49CC96);

late final defFont = GoogleFonts.poppins(
  fontSize: 5.0.sp,
  fontWeight: FontWeight.normal,
);
// My Text Styles
const kHeadingextStyle = TextStyle(
  fontSize: 28,
  color: kTextColor,
  fontWeight: FontWeight.bold,
);
const mTextHeading = TextStyle(
    fontFamily: "Jiret",
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 25);
const mTextHeading2 = TextStyle(
    fontFamily: "Jiret",
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 20);
const kSubheadingextStyle = TextStyle(
  fontSize: 24,
  color: Color(0xFF61688B),
  height: 2,
);

const kTitleTextStyle = TextStyle(
  fontSize: 20,
  color: kTextColor,
  fontWeight: FontWeight.bold,
);

const kSubtitleTextSyule = TextStyle(
  fontSize: 18,
  color: kTextColor,
  // fontWeight: FontWeight.bold,
);

const double DefaultPadding = 20.0;
const defBlackColor = Color(0xFF101010);
const neumorph = Color(0xFFE7ECEF);
Offset offset = Offset(28, 28);
double blur = 30.0;
const kSecondaryColor = Color(0xFF8B94BC);
const kGreenColor = Color(0xFF49CC96);
const kRedColor = Color(0xFFE92E30);
const kGrayColor = Color(0xFFC1C1C1);
const kBlackColor = Color(0xFF101010);
const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const double kDefaultPadding = 20.0;
