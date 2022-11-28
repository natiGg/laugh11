import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laugh1/app/modules/home/controllers/home_controller.dart';
import 'package:sizer/sizer.dart';

import 'avatar.dart';

class UserBar extends GetView<HomeController> {
  const UserBar({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Avatar(image: image),
        SizedBox(
          width: 10.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width - 120.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Daisy",
                      style: GoogleFonts.poppins(
                          fontSize: 10.sp, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Text("34 mins ago",
                      style: GoogleFonts.poppins(
                          fontSize: 10.sp, fontWeight: FontWeight.w300))
                ],
              ),
              Icon(
                Icons.more_vert,
                color: Colors.grey,
                size: 20.0,
              )
            ],
          ),
        ),
      ],
    );
  }
}
