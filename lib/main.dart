import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:laugh1/app/themes/theme_controller.dart';
import 'package:laugh1/app/themes/themes.dart';
import 'package:sizer/sizer.dart';

import 'app/modules/error_pages/views/error_pages_view.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await GetStorage.init();

  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return StartPage();
      },
    ),
  );
  FlutterNativeSplash.remove();
}

class StartPage extends StatefulWidget {
  StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  late StreamSubscription _streamSubscription;
  final themeController = Get.put(ThemeController());
  bool connectSuccess = false;
  final Connectivity _connectivity = Connectivity();
  var connectionType = 0;
  var isConnected = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getConnectivityType();
    _streamSubscription =
        _connectivity.onConnectivityChanged.listen(_updateState);
  }

  @override
  Widget build(BuildContext context) {
    return isConnected
        ? GetMaterialApp(
            themeMode: themeController.theme,
            theme: Themes.lightTheme,
            darkTheme: Themes.darkTheme,
            debugShowCheckedModeBanner: false,
            title: "laugh1",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          )
        : MaterialApp(
            debugShowCheckedModeBanner: false, home: ErrorPagesView());
  }

  _updateState(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        setState(() {
          connectionType = 1;
          isConnected = true;
        });

        break;
      case ConnectivityResult.mobile:
        setState(() {
          connectionType = 2;
          isConnected = true;
        });

        break;
      case ConnectivityResult.none:
        setState(() {
          connectionType = 0;
          isConnected = false;
        });

        break;
      default:
        isConnected = false;

        Get.snackbar('Error', "can't connect");
        break;
    }
  }

  Future<void> getConnectivityType() async {
    late ConnectivityResult connectivityResult;
    try {
      connectivityResult = await (_connectivity.checkConnectivity());
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return _updateState(connectivityResult);
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
  }
}
