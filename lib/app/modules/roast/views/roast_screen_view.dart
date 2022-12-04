import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laugh1/app/modules/home/widgets/custom_app_bar.dart';
import 'package:laugh1/app/modules/home/widgets/shimmer.dart';

import '../../home/widgets/post.dart';

class RoastScreenView extends GetView {
  int roast_id = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppBar(),
          Text(
            'Natig is being roasted',
            style: GoogleFonts.poppins(fontSize: 20),
          ),
          Hero(
            tag: 1,
            child: Image.asset(
              "assets/image/laughing2.gif",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
