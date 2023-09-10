import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        height: 70,
        backgroundColor: Colors.white,
        indicatorColor: kPrimaryColor,
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            icon: Image.asset('assets/images/home.png'),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Image.asset('assets/images/ring.png'),
            label: 'Notification',
          ),
          NavigationDestination(
            icon: Image.asset('assets/images/receipt.png'),
            label: 'Receipt',
          ),
          NavigationDestination(
            icon: Image.asset('assets/images/profile.png'),
            label: 'profile',
          ),
        ],
      );
  }
}