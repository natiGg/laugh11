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
  List items = [1, 2, 3, 2, 7, 4, 2, 0];

  // RefreshController _refreshController =
  //     RefreshController(initialRefresh: false);
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
      body: Scaffold(
          body: ListView(children: [
        CustomAppBar(),
        ...items.map(((e) => Post(
              image: e <= 3
                  ? "https://raw.githubusercontent.com/Rea2er/flutter-house-rent/main/assets/images/offer0${e}.jpeg"
                  : e >= 3
                      ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd9jewoY_dvLWkuX_TnUgVgFrkjhseQ2S0NZmrzlWKfCNo6JX-YNT2ZvoKwSsvGohgDLU&usqp=CAU"
                      : "https://www.rd.com/wp-content/uploads/2018/09/69-Short-Jokes-Anyone-Can-Remember-nicole-fornabaio-rd.com_.jpg?fit=700,467",
              caption:
                  "'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends',",
              level: e > 1 ? "#Pro" : "#Comedian",
            )))
      ])),
      bottomNavigationBar: BottomNav(),
    );
  }
}
