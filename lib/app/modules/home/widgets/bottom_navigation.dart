import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laugh1/app/modules/constants/constants.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.amber,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
            label: "Home", icon: Icon(FontAwesomeIcons.faceLaugh)),
        BottomNavigationBarItem(
            label: "Book", icon: Icon(FontAwesomeIcons.flag)),
        BottomNavigationBarItem(
            label: "Person", icon: Icon(FontAwesomeIcons.user))
      ],
    );
  }
}
