import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:laugh1/app/modules/home/widgets/bottom_navigation.dart';
import 'package:laugh1/app/modules/home/widgets/shimmer.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../themes/theme_controller.dart';
import '../../profile/views/profile_view.dart';
import '../controllers/home_controller.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/gif_header.dart';
import '../widgets/post.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeView extends GetView<HomeController> {
  List isSelected = [true, false, false, false];
  List items = [1, 2, 3, 2, 7, 4, 2, 0];
  late PersistentTabController _tabcontroller =
      PersistentTabController(initialIndex: 0);

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
    return PersistentTabView(
      context,
      controller: _tabcontroller,
      screens: _buildScreens(items),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor:
          Theme.of(context).colorScheme.secondary, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Theme.of(context).colorScheme.secondary,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style9, // Choose the nav bar style with this property.
    );
    ;
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        CustomAppBar(),
        ...items.map(((e) => e < 4
            ? Post(
                image: e <= 3
                    ? "https://raw.githubusercontent.com/Rea2er/flutter-house-rent/main/assets/images/offer0${e}.jpeg"
                    : e >= 3
                        ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd9jewoY_dvLWkuX_TnUgVgFrkjhseQ2S0NZmrzlWKfCNo6JX-YNT2ZvoKwSsvGohgDLU&usqp=CAU"
                        : "https://www.rd.com/wp-content/uploads/2018/09/69-Short-Jokes-Anyone-Can-Remember-nicole-fornabaio-rd.com_.jpg?fit=700,467",
                caption:
                    "'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends',",
                level: e > 1 ? "#Pro" : "#Comedian",
              )
            : ShimerPost()))
      ]),
    );
  }
}

List<Widget> _buildScreens(List items) {
  return [
    HomeScreen(
      items: items,
    ),
    HomeScreen(
      items: items,
    ),
    ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      contentPadding: 5,
      icon: Icon(FontAwesomeIcons.smile),
      title: ("Jokes"),
      activeColorPrimary: Colors.amber,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      contentPadding: 2,
      icon: Icon(FontAwesomeIcons.home),
      title: ("Home"),
      activeColorPrimary: Colors.amber,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      title: ("profile"),
      activeColorPrimary: Colors.amber,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}
