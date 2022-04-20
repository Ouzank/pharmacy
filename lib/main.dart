// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacylocate/Views/SignUp_Screen.dart';
import 'package:pharmacylocate/Views/Splash_Screen.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
 const  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return  GetMaterialApp(
          title: 'PharmacyApp',
          debugShowCheckedModeBanner: false,
          theme:ThemeData.light(),
          home: Splash(),//Splash(),
        );
  }
}
