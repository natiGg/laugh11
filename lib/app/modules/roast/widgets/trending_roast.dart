import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laugh1/app/modules/home/widgets/avatar.dart';
import 'package:sizer/sizer.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TrendingRoast extends StatelessWidget {
  TrendingRoast({super.key});
  final upcomings = [
    "https://i.pinimg.com/originals/f9/85/a6/f985a628522bbe432229d75dac79e84d.jpg",
    "https://i.ytimg.com/vi/CXWrK-LDAFk/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFbyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC9U4vPcFPJretsgPqE2VTLrE7ksw",
    "https://imgix.ranker.com/user_node_img/41/819471/original/819471-photo-u51?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"
  ];

  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 5,
      ),
      height: 25.h,
      child: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: upcomings
                .map((e) => Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              e,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.black,
                                    Colors.black45,
                                    Colors.black12,
                                    Colors.black.withOpacity(0)
                                  ])),
                        ),
                        Positioned(
                            top: 55,
                            left: 30,
                            child: Column(
                              children: [
                                Text(
                                  "",
                                  style: GoogleFonts.poppins(
                                      fontSize: 10.sp, color: Colors.white),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            )),
                        Positioned(
                            left: 30,
                            bottom: 22,
                            child: Column(children: [
                              Text(
                                "10+ people \njoined this roast",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ])),
                        Positioned(
                          right: 0.h,
                          bottom: 10,
                          child: SizedBox(
                            width: 20.h,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white, width: 0.2),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: CircleAvatar(
                                                radius: 20,
                                                backgroundImage: NetworkImage(
                                                    "https://www.biography.com/.image/t_share/MTQzMzA3MjQ0MzI5NTEwNDcx/kevin-hart_gettyimages-450909048jpg.jpg")),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 11.h,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white, width: 0.2),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: CircleAvatar(
                                                radius: 20,
                                                backgroundImage: NetworkImage(
                                                    "https://media-exp1.licdn.com/dms/image/C4D03AQFBuPizM4OMaA/profile-displayphoto-shrink_200_200/0/1628313823189?e=1675900800&v=beta&t=7etwcfLbuHe1mAcidhp5bDXnusvsUOyEQQ78PnYFhiU")),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 7.h,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white, width: 0.2),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: CircleAvatar(
                                                radius: 20,
                                                backgroundImage: NetworkImage(
                                                    "https://imgix.ranker.com/user_node_img/41/819471/original/819471-photo-u51?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375")),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 3.h,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white, width: 0.2),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: CircleAvatar(
                                                radius: 20,
                                                backgroundImage: NetworkImage(
                                                    "https://imgix.ranker.com/user_node_img/41/819471/original/819471-photo-u51?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375")),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 2,
                          right: 5,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            offset: Offset(0, 3),
                                            blurRadius: 1)
                                      ],
                                      shape: BoxShape.circle,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                  child: IconButton(
                                    iconSize: 20,
                                    alignment: Alignment.center,
                                    onPressed: (() {}),
                                    icon: Icon(FontAwesomeIcons.coffee),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
                .toList(),
          ),
          Positioned(
            left: 30,
            bottom: 10,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: upcomings.length,
                  effect: ExpandingDotsEffect(
                      expansionFactor: 4,
                      dotWidth: 8,
                      dotHeight: 8,
                      spacing: 4,
                      activeDotColor: Colors.white),
                  onDotClicked: (index) {
                    _pageController.animateToPage(index,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
