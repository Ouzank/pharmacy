import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacylocate/Constants/Constants.dart';

import '../Constants/Constants.dart';

class Mainpage extends StatelessWidget {
  Mainpage({Key? key}) : super(key: key);
  RxInt selectedindex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: screens[selectedindex.value],
          bottomNavigationBar:  CurvedNavigationBar(
              key: navigationKey,
              backgroundColor: Colors.white,
              color: maincolor,
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds: 300),
              height: 75,
              index: selectedindex.value,
              onTap: (index) {
            selectedindex.value = index;
            final navigationState = navigationKey.currentState;
            navigationState?.setPage(index);
          },
          items: items)),
    );
  }
}
