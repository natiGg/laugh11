import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:laugh1/app/themes/theme_controller.dart';
import 'package:laugh1/app/themes/themes.dart';
import 'package:sizer/sizer.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await GetStorage.init();
  final themeController = Get.put(ThemeController());
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          themeMode: themeController.theme,
          theme: Themes.lightTheme,
          darkTheme: Themes.darkTheme,
          debugShowCheckedModeBanner: false,
          title: "laugh1",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
        );
      },
    ),
  );
  FlutterNativeSplash.remove();
}
