import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:laugh1/app/modules/home/widgets/bottom_navigation.dart';
import 'package:laugh1/app/modules/home/widgets/shimmer.dart';

import '../../../themes/theme_controller.dart';
import '../controllers/home_controller.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/gif_header.dart';
import '../widgets/post.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeView extends GetView<HomeController> {
  List isSelected = [true, false, false, false];
  List items = [1, 2, 3, 2, 1];

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  // bool _show = false;
  // RxBool _isRefreshed = false.obs;

  // void _onRefresh() async {
  //   _isRefreshed.value = !_isRefreshed.value;

  //   // monitor network fetch
  //   await Future.delayed(Duration(milliseconds: 1000));
  //   // if failed,use refreshFailed()
  //   _refreshController.refreshCompleted();

  //   _isRefreshed.value = !_isRefreshed.value;
  // }

  // void _onLoading() async {
  //   // monitor network fetch
  //   await Future.delayed(Duration(milliseconds: 1000));
  //   // if failed,use loadFailed(),if no data return,use LoadNodata()

  //   _refreshController.loadComplete();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SmartRefresher(
        onLoading: (() {}),
        header: WaterDropHeader(),
        onRefresh: (() {}),
        enablePullDown: true,
        enablePullUp: true,
        child: Scaffold(
            body: ListView(children: [
          CustomAppBar(),
          ...items.map(((e) => Post(
                image:
                    "https://raw.githubusercontent.com/Rea2er/flutter-house-rent/main/assets/images/offer0${e}.jpeg",
                caption:
                    "'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends',",
                level: "Pro",
              )))
        ])),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
