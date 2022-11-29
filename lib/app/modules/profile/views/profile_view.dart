import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  int selectedIndex = 0;

  var listImage = [
    "https://raw.githubusercontent.com/Rea2er/flutter-house-rent/main/assets/images/offer01.jpeg",
    "https://raw.githubusercontent.com/Rea2er/flutter-house-rent/main/assets/images/offer02.jpeg",
    "https://raw.githubusercontent.com/Rea2er/flutter-house-rent/main/assets/images/offer03.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 30.0,
                  ),
                ),
                Text(
                  "Jenny Wilson",
                  style: GoogleFonts.poppins(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 70.0),
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/Rea2er/flutter-house-rent/main/assets/images/avatar.jpeg"),
            radius: 40.0,
          ),
          SizedBox(height: 20.0),
          Text(
            "@Nati G",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w800,
              fontSize: 30.0,
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 20.0),
              Column(
                children: [
                  Text(
                    "29",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "Following",
                    style: GoogleFonts.poppins(
                        color: Colors.black.withOpacity(0.3),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w100),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "121.9k",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "Followers",
                    style: GoogleFonts.poppins(
                        color: Colors.black.withOpacity(0.3),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "7.5M",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "Like",
                    style: GoogleFonts.poppins(
                        color: Colors.black.withOpacity(0.3),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              SizedBox(width: 20.0),
            ],
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Follow",
                  style: GoogleFonts.poppins(fontSize: 18.0),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(140.0, 55.0),
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(width: 15.0),
              OutlinedButton(
                onPressed: () {},
                child: Icon(Icons.mail_outline_outlined),
                style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    fixedSize: Size(50.0, 60.0)),
              )
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TabBar(
              //   isScrollable: true,
              //   controller: tabController,
              //   indicator: BoxDecoration(borderRadius: BorderRadius.zero),
              //   labelColor: Colors.black,
              //   labelStyle:
              //       GoogleFonts.poppins(fontSize: 28.0, fontWeight: FontWeight.bold),
              //   unselectedLabelColor: Colors.black26,
              //   onTap: (tapIndex) {
              //     selectedIndex = tapIndex;
              //   },
              //   tabs: [
              //     Tab(text: "Photos"),
              //     Tab(text: "Video"),
              //     Tab(text: "Tagged"),
              //   ],
              // ),
              SizedBox(width: 50.0),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 250.0, crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: NetworkImage(listImage[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 37.0, right: 37.0, top: 185.0, bottom: 15.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Text("1.234k"),
                      ),
                    ),
                  ),
                );
              },
              itemCount: 3,
            ),
          )
        ],
      ),
    );
  }
}
