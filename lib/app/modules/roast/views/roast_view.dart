import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laugh1/app/modules/roast/widgets/trending_roast.dart';
import 'package:sizer/sizer.dart';

import '../../home/widgets/custom_app_bar.dart';
import '../controllers/roast_controller.dart';

class RoastView extends GetView<RoastController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [CustomAppBar()],
        body: ListView(children: [
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Upcoming Roasts",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),
            ),
          ),
          TrendingRoast(),
          TrendingRoast(),
          TrendingRoast(),
          TrendingRoast(),
          TrendingRoast(),
          TrendingRoast(),
        ]),
      ),
    );
  }
}
