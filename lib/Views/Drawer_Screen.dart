// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacylocate/Constants/Constants.dart';
import 'package:pharmacylocate/Views/PaymentHistory_Screen.dart';
import 'package:pharmacylocate/Views/PaymentMethods_Screen.dart';
import 'package:pharmacylocate/Views/SignIn_Screen.dart';
import 'package:pharmacylocate/Views/UserProfil_Screen.dart';

import '../Widgets/BuidMenuItem_Widget.dart';
import '../Widgets/BuildDrawerHeader_Widget.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);
  final String name = 'My name';
  final String email = 'my@example.com';
  final picprofil =
      'https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?w=2000';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
          color: maincolor,
          child: ListView(
            children: [
              buildHeader(name, email, picprofil, () {}),
              buildMenuItem('Methode de payement', Icons.payment, () {
                Get.to(PaymentMethods());
              }),
              SizedBox(
                height: 16,
              ),
              buildMenuItem('Historique des achats', Icons.history_edu_outlined,
                  () {
                Get.to(PaymentHistory());
              }),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              buildMenuItem('Deconnexion', Icons.logout_outlined, () {
                Get.to(SignIn());
              }),
            ],
          )),
    );
  }
}
