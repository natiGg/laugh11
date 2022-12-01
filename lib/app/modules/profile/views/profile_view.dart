import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laugh1/app/modules/constants/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../home/widgets/post.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends StatefulWidget {
  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with TickerProviderStateMixin {
  int selectedIndex = 0;

  var listImage = [
    "https://raw.githubusercontent.com/Rea2er/flutter-house-rent/main/assets/images/offer01.jpeg",
    "https://raw.githubusercontent.com/Rea2er/flutter-house-rent/main/assets/images/offer02.jpeg",
    "https://raw.githubusercontent.com/Rea2er/flutter-house-rent/main/assets/images/offer03.jpeg"
  ];

  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Stack(
          children: [
            Opacity(
              opacity: 0.1,
              child: Container(
                child: Image.asset(
                  "assets/image/laugh_bg.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 35.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 20.0,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  width: 3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                        "https://scontent.fadd1-1.fna.fbcdn.net/v/t39.30808-6/315111248_1976029435923235_7888811205742473118_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=38iWmPnz2wYAX-FVWWE&_nc_ht=scontent.fadd1-1.fna&oh=00_AfDbe0ZXZAfKoyLi0JxnRs2nvgBNxSKyj09q1rKWn4iNkQ&oe=638A62F4")),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "@Nati G",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w800,
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "29",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 10.0.sp,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Following",
                            style: GoogleFonts.poppins(
                                fontSize: 10.0.sp, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 2.h,
                      ),
                      Column(
                        children: [
                          Text(
                            "121.9k",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 10.0.sp,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Followers",
                            style: GoogleFonts.poppins(
                                fontSize: 10.0.sp, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      SizedBox(width: 2.h),
                      Column(
                        children: [
                          Text(
                            "7.5M",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 10.0.sp,
                            ),
                          ),
                          Image.asset(
                            "assets/image/laughing2.gif",
                            height: 4.h,
                            width: 9.w,
                            fit: BoxFit.cover,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Follow",
                            style: GoogleFonts.poppins(fontSize: 18.0),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(100.0, 45.0),
                            primary: Colors.amber,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 3.h,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 35.0),
                  child: Center(
                    child: Container(
                      width: 12.w,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Get.isDarkMode
                                ? Colors.white.withOpacity(0.1)
                                : Colors.white.withOpacity(0.8),
                            offset: Offset(-6.0, -6.0),
                            blurRadius: 10.0,
                          ),
                          BoxShadow(
                            color: Get.isDarkMode
                                ? Colors.black.withOpacity(0.4)
                                : Colors.black.withOpacity(0.1),
                            offset: Offset(6.0, 6.0),
                            blurRadius: 10.0,
                          ),
                        ],
                        color: Get.isDarkMode
                            ? Color(0xFF292D32)
                            : Color(0xFFEFEEEE),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Opacity(
                              opacity: 0.5,
                              child: StepProgressIndicator(
                                direction: Axis.vertical,
                                totalSteps: 200,
                                currentStep: 65,
                                size: 42,
                                padding: 0,
                                unselectedColor: Colors.amber,
                                selectedColor: Colors.transparent,
                                roundedEdges: Radius.circular(10),
                                unselectedGradientColor: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.amber,
                                    Colors.white,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image.asset(
                                  Get.isDarkMode
                                      ? "assets/image/pro2.png"
                                      : "assets/image/pro1.png",
                                  height: 5.h,
                                  width: 10.w,
                                  fit: BoxFit.cover,
                                ),
                                RotatedBox(
                                  quarterTurns: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "#Comedian",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 17.0.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.amber[300]!,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabBar(
                  isScrollable: true,
                  controller: tabController,
                  indicator: BoxDecoration(borderRadius: BorderRadius.zero),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black26,
                  labelStyle: GoogleFonts.poppins(
                      fontSize: 12.0.sp, fontWeight: FontWeight.bold),
                  onTap: (tapIndex) {
                    selectedIndex = tapIndex;
                  },
                  tabs: [
                    Tab(text: "#MyJokes"),
                    Tab(text: "#Roasts"),
                    Tab(text: "#Challenge"),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 2.0),
        Expanded(
          child: TabBarView(controller: tabController, children: [
            ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Post(
                    image: listImage[index],
                    caption:
                        "'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends',",
                    level: "#Pro",
                  ),
                );
              },
              itemCount: 3,
            ),
            ListView.builder(
              itemBuilder: (context, index) {
                return Post(
                  image: listImage[index],
                  caption:
                      "'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends',",
                  level: "#Pro",
                );
              },
              itemCount: 3,
            ),
            ListView.builder(
              itemBuilder: (context, index) {
                return Post(
                  image: listImage[index],
                  caption:
                      "'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends',",
                  level: "#Pro",
                );
              },
              itemCount: 3,
            ),
          ]),
        )
      ]),
    );
  }
}
