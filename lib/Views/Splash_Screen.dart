// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmacylocate/Constants/Constants.dart';
import 'package:pharmacylocate/Views/Home_Screen.dart';
import 'package:pharmacylocate/Views/MainPage_Screen.dart';
import 'package:pharmacylocate/Views/SignIn_Screen.dart';

import 'Begin_Screen.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  void _navigatetohome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Get.to(Begin(),
        transition: Transition.fadeIn, duration: Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/truepharmlogo.png',
                height: 200,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text("Pharmacy",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontStyle: FontStyle.normal,
                            color: Colors.yellow),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text("App",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontStyle: FontStyle.normal,
                              color: Color.fromARGB(255, 5, 5, 5)))),
                  SpinKitFadingCircle(
                    color: Colors.black,
                    size: 30,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
