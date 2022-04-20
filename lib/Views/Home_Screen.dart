// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacylocate/Constants/Constants.dart';
import 'package:pharmacylocate/Views/Begin_Screen.dart';
import 'package:pharmacylocate/Views/Drawer_Screen.dart';
import 'package:pharmacylocate/Widgets/AnimatedSearch_Widget.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: maincolor,
          title: Text("Accueil"),
          actions: [
          
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            )
          ],
        ),
        drawer: MyDrawer(),
        body:Center(child: Text("Welcome to home"),)
            );
  }
}
