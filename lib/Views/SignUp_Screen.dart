// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmacylocate/Constants/Constants.dart';
import 'package:pharmacylocate/Views/MainPage_Screen.dart';
import 'package:pharmacylocate/Views/SignIn_Screen.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  RxBool show = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            width: 700,
            height: 180,
            decoration: BoxDecoration(
                color: maincolor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Pharmacy",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontStyle: FontStyle.normal,
                          color: Colors.yellow),
                    )),
                // SizedBox(
                //   width: 5,
                // ),
                Text("App",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontStyle: FontStyle.normal,
                            color: Color.fromARGB(255, 5, 5, 5)))),

                SvgPicture.asset(
                  'assets/capsule.svg',
                  width: 70,
                  height: 70,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 5,
              ),
              Form(
                child: SingleChildScrollView(
                    child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Inscrivez-vous",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontSize: 30, color: maincolor),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    myTextFormField('Nom', Icons.person),
                    inputsizebox,
                    myTextFormField('Prenom', Icons.person),
                    inputsizebox,
                    myTextFormField('Email', Icons.mail),
                    inputsizebox,
                    myTextFormField('Telephone', Icons.phone_android_rounded),
                    inputsizebox,
                    Obx(() => TextFormField(
                          obscureText: show.value,
                          cursorColor: maincolor,
                          decoration: InputDecoration(
                              focusColor: maincolor,
                              hintText: 'Mot de passe',
                              filled: true,
                              fillColor: inputColor,
                              prefixIcon: Icon(
                                Icons.lock,
                                color: maincolor,
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    show.toggle();
                                  },
                                  icon: show.value
                                      ? Icon(
                                          FontAwesomeIcons.eye,
                                          color: maincolor,
                                        )
                                      : Icon(FontAwesomeIcons.eyeSlash,
                                          color: maincolor)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none)),
                        )),
                    inputsizebox,
                    Obx(() => TextFormField(
                          obscureText: show.value,
                          decoration: InputDecoration(
                              hintText: 'Confirmez Mot de passe',
                              filled: true,
                              fillColor: inputColor,
                              prefixIcon: Icon(
                                Icons.lock,
                                color: maincolor,
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    show.toggle();
                                  },
                                  icon: show.value
                                      ? Icon(FontAwesomeIcons.eye,
                                          color: maincolor)
                                      : Icon(FontAwesomeIcons.eyeSlash,
                                          color: maincolor)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none)),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    buildButton("S'inscrire", Mainpage()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Deja inscrit ?",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.to(SignIn());
                            },
                            child: Text(
                              "Se connecter",
                              style: TextStyle(fontSize: 20, color: maincolor),
                            ))
                      ],
                    )
                  ],
                )),
              ),
            ]),
          ),
        ],
      ),
    ));
  }
}

Widget myTextFormField(String title, IconData icon, [RxBool? show]) {
  return TextFormField(
    cursorColor: maincolor,
    decoration: InputDecoration(
        hintText: title,
        filled: true,
        fillColor: inputColor,
        prefixIcon: Icon(
          icon,
          color: maincolor,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none)),
  );
}

Widget buildButton(String title, Widget onClick) {
  return ElevatedButton(
    onPressed: () {
      Get.to(onClick);
    },
    child: Text(title,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
    style: ButtonStyle(
      elevation:MaterialStateProperty.all<double?> (15),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
            EdgeInsets.symmetric(vertical: 10, horizontal: 100)),
        backgroundColor: MaterialStateProperty.all<Color?>(maincolor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder?>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)))),
  );
}
