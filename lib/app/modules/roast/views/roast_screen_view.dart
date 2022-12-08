import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laugh1/app/modules/home/widgets/custom_app_bar.dart';
import 'package:laugh1/app/modules/home/widgets/shimmer.dart';
import 'package:lottie/lottie.dart';

import '../../home/widgets/post.dart';
import '../controllers/roast_controller.dart';

class RoastScreenView extends GetView<RoastController> {
  int roast_id = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [CustomAppBar()],
        body: ListView(
          children: [
            Text(
              'Natig is being roasted',
              style: GoogleFonts.poppins(fontSize: 20),
            ),
            Hero(
              tag: 1,
              child: Lottie.asset(
                "assets/lottie/laughing.json",
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
