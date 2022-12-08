import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laugh1/app/modules/constants/constants.dart';
import 'package:laugh1/app/modules/home/widgets/bottom_navigation.dart';
import 'package:laugh1/app/modules/home/widgets/shimmer.dart';
import 'package:laugh1/app/modules/sign_up/widgets/loading.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/theme_controller.dart';
import '../../profile/views/profile_view.dart';
import '../../roast/views/roast_view.dart';
import '../controllers/home_controller.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/gif_header.dart';
import '../widgets/post.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeView extends GetView<HomeController> {
  List isSelected = [true, false, false, false];
  List items = [1, 2, 3, 2, 7, 4, 2, 0];
  late PersistentTabController _tabcontroller =
      PersistentTabController(initialIndex: 1);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _tabcontroller,
      screens: _buildScreens(items, controller),
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

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    required this.controller,
    required this.items,
  }) : super(key: key);

  final List items;
  final HomeController controller;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    RefreshController _refreshController =
        RefreshController(initialRefresh: false);

    bool _show = false;
    RxBool _isRefreshed = false.obs;

    void _onRefresh() async {
      // monitor network fetch
      await Future.delayed(Duration(milliseconds: 1000));
      // if failed,use refreshFailed()
      _refreshController.refreshCompleted();
    }

    void _onLoading() async {
      // monitor network fetch
      await Future.delayed(Duration(milliseconds: 1000));
      // if failed,use loadFailed(),if no data return,use LoadNodata()

      if (mounted) setState(() {});
      _refreshController.loadComplete();
    }

    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, bool innerBoxIsScrolled) {
              return <Widget>[CustomAppBar()];
            },
            body: SmartRefresher(
              enablePullDown: true,
              enablePullUp: true,
              header: GifHeader1(),
              controller: _refreshController,
              onRefresh: _onRefresh,
              onLoading: _onLoading,
              footer: ClassicFooter(),
              child: ListView(children: [
                ...widget.items.map(((e) => e < 4
                    ? Post(
                        image: e <= 3
                            ? "https://raw.githubusercontent.com/Rea2er/flutter-house-rent/main/assets/images/offer0${e}.jpeg"
                            : e >= 3
                                ? "https://image.winudf.com/v2/image/dG9wLmFtaGFyaWMuZnVubnkuam9rZXNfc2NyZWVuXzBfMjVxYXEwYXM/screen-0.jpg?fakeurl=1&type=.webp"
                                : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpcwEezaLwxdB0Nt2Bk9BCJFsaq22Z8eeKiPK6-cXsjk6meMcyS9CJSA9vv7LOIrSqZE8&usqp=CAU",
                        caption: e < 2
                            ? "'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends',"
                            : "አንዱ የዋህ በዝናብ ሲጓዝ አዳልጦት ይወድቃል። ወድቆ እያለ ብልጭ  ይላል ፤ ይኼኔ ምነው ፈጣሪ ሳልዘጋጅ ፎቶ አነሳኸኝ አለ ይባላል። #Dark #Jokes ",
                        level: e > 1 ? "#Pro" : "#Comedian",
                      )
                    : ShimerPost()))
              ]),
            )),
        floatingActionButton: InkWell(
            onTap: () {
              widget.controller.tapped.value = !widget.controller.tapped.value;
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  // border: Border.all(color: primaryColor),
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(40)),
              child: Obx((() => !widget.controller.tapped.isFalse
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            "assets/image/jokes2.jpg",
                            height: 25,
                            width: 25,
                            fit: BoxFit.cover,
                          ),
                          Text("Make a\njoke",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold)),
                        ])
                  : Center(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: LoadingDefault(),
                      ),
                    ))),
            )));
  }
}

List<Widget> _buildScreens(List items, HomeController controller) {
  return [
    RoastView(),
    HomeScreen(
      controller: controller,
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
      title: ("Roasts"),
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
