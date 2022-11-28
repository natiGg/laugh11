import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laugh1/app/themes/theme_controller.dart';
import 'package:sizer/sizer.dart';
import '../../../themes/themes.dart';
import 'avatar.dart';

class CustomAppBar extends StatelessWidget {
  final themeController = Get.find<ThemeController>();

  CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Laugh1",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 20.sp),
                  ),
                  Avatar(
                    image:
                        "https://raw.githubusercontent.com/Rea2er/flutter-house-rent/main/assets/images/avatar.jpeg",
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.secondary,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none),
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: Theme.of(context).colorScheme.onSurface,
                          size: 30,
                        ),
                        hintText: "Search Jokes here..",
                        hintStyle: TextStyle(color: Colors.grey[600])),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      if (Get.isDarkMode) {
                        themeController.changeThemeMode(ThemeMode.light);
                        themeController.saveTheme(false);
                      } else {
                        themeController.changeThemeMode(ThemeMode.dark);
                        themeController.saveTheme(true);
                      }
                    },
                    icon: Icon(themeController.theme == ThemeMode.light
                        ? Icons.dark_mode_rounded
                        : Icons.light_mode_rounded))
              ],
            ),
          ],
        ));
  }
}
