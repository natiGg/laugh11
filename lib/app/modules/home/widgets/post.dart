import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laugh1/app/modules/home/widgets/reaction.dart';
import 'package:laugh1/app/modules/home/widgets/user_bar.dart';

import 'package:readmore/readmore.dart';
import 'package:sizer/sizer.dart';
import '../../constants/constants.dart';
import '../controllers/home_controller.dart';
import 'content.dart';

class Post extends StatefulWidget {
  const Post(
      {Key? key,
      required this.image,
      required this.caption,
      required this.level})
      : super(key: key);

  final String image;
  final String caption;
  final String level;
  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> with SingleTickerProviderStateMixin {
  @override
  bool get wantKeepAlive => true;
  final initialController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 70.0.h,
                width: double.infinity.h,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          Get.isDarkMode
                              ? "assets/image/pro2.png"
                              : "assets/image/pro1.png",
                          height: 5.h,
                          width: 10.w,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          widget.level,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 10.sp),
                        ),
                      ],
                    ),
                    Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    UserBar(
                      image: widget.image,
                    ),
                    SizedBox(height: 15.0),
                    ReadMoreText(
                      widget.caption,
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      textAlign: TextAlign.justify,

                      style: GoogleFonts.poppins(
                          fontSize: 10.sp, fontWeight: FontWeight.w500),
                      // trimExpandedText: 'Show less',
                      moreStyle: GoogleFonts.poppins(
                          fontSize: 13.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    Expanded(child: Content(image: widget.image)),
                    SizedBox(
                      height: 10.0,
                    ),
                    // HashTags(),

                    Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(height: 5.h, child: Reaction()),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
