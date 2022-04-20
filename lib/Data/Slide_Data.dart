import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmacylocate/Views/Begin_Screen.dart';
import 'package:pharmacylocate/Views/SignIn_Screen.dart';
import 'package:pharmacylocate/Widgets/GetStarted_Widget.dart';

import '../Models/Slide_Model.dart';

final List<Slide> slides = [
  Slide(
    Image.asset(
      'assets/truepharmlogo.png',
      height: 200,
    ),
    Column(
      children: [
        Text("Bienvenue dans",
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: Colors.yellow, fontSize: 30))),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text("Pharmacy",
                style: GoogleFonts.montserrat(
                  // ignore: prefer_const_constructors
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      color: Colors.yellow),
                )),
            // ignore: prefer_const_constructors
            SizedBox(
              width: 5,
            ),
            Text("App",
                style: GoogleFonts.montserrat(
                    // ignore: prefer_const_constructors
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 5, 5, 5))))
          ],
        )
      ],
    ),
  ),
  Slide(
    SvgPicture.asset(
      'assets/drug.svg',
      height: 200,
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Commander vos medicaments depuis la maison",textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                // ignore: prefer_const_constructors
                textStyle: TextStyle(
                  
                    //fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    color: Color.fromARGB(255, 5, 5, 5))))
      ],
    ),
  ),
  Slide(
    SvgPicture.asset(
      'assets/location-time.svg',
      height: 200,
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            "Nous vous fournissons l'emplacement des pharmacies les plus proches de chez vous",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                // ignore: prefer_const_constructors
                textStyle: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    color: Color.fromARGB(255, 5, 5, 5))))
      ],
    ),
  ),
  Slide(
    SvgPicture.asset(
      'assets/undraw_medicine_b-1-ol.svg',
      height: 200,
    ),
    const getStarted(),
  ),
];
