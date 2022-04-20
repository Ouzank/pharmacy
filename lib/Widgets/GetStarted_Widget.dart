import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmacylocate/Views/Home_Screen.dart';
import 'package:pharmacylocate/Views/MainPage_Screen.dart';
import 'package:pharmacylocate/Views/SignIn_Screen.dart';
import 'package:pharmacylocate/Views/SignUp_Screen.dart';

class getStarted extends StatelessWidget {
  const getStarted({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Profiter pleinement de notre plate-forme",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                // ignore: prefer_const_constructors
                textStyle: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    color: Color.fromARGB(255, 5, 5, 5)))),
        SizedBox(
          height: 150,
        ),
        ElevatedButton(
          onPressed: () {
           Get.to(SignUp(), transition: Transition.leftToRight);
          },
          child: const Text("GET STARTED"),
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                  EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
              backgroundColor: MaterialStateProperty.all<Color?>(
                  Color.fromARGB(255, 55, 211, 146)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder?>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            Text("Already have an account ?",
                style: GoogleFonts.montserrat(
                    // ignore: prefer_const_constructors
                    textStyle: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        color: Colors.white))),
            TextButton(
                onPressed: () {
                  Get.to(const SignIn(), transition: Transition.leftToRightWithFade);
                },
                child: Text("Se connecter",
                    style: GoogleFonts.montserrat(
                        // ignore: prefer_const_constructors
                        textStyle: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            color: Color.fromARGB(255, 35, 32, 167)))))
          ],
        )
      ],
    );
  }
}
