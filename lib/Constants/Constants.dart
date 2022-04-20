import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacylocate/Views/Home_Screen.dart';
import 'package:pharmacylocate/Views/PaymentHistory_Screen.dart';
import 'package:pharmacylocate/Views/SearchMedoc_Screen.dart';
import 'package:pharmacylocate/Views/UserProfil_Screen.dart';

const Color maincolor = Color(0xFF32AAB3);
Color? inputColor = Colors.grey[200];
RxString screenTitle = "Accueil".obs;
const SizedBox inputsizebox = SizedBox(
  height: 10,
);
final navigationKey = GlobalKey<CurvedNavigationBarState>();
final items = <Widget>[
  const Icon(
    Icons.home,
    size: 30,
  ),
  const Icon(Icons.search, size: 30),
  const Icon(Icons.payment_rounded, size: 30),
  const Icon(Icons.person, size: 30),
];

final screens = [
  Home(),
  const SearchMedoc(),
  const PaymentHistory(),
  const UserProfil(),
];
