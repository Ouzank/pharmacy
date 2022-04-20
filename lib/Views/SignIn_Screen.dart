// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmacylocate/Constants/Constants.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded,size: 30,),
          ),
      
                SvgPicture.asset(
                  'assets/mobile.svg',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            SizedBox(height: 40,),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
mainAxisAlignment: MainAxisAlignment.center,
children: [
               Text("Pharmacy",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
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
                            fontSize: 35,
                            fontStyle: FontStyle.normal,
                            color: Color.fromARGB(255, 5, 5, 5)))),
                   SvgPicture.asset(
                  'assets/capsule.svg',
                  width: 70,
                  height: 70,
                ),
                 ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 550,
            padding: EdgeInsets.symmetric(vertical: 50),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  )),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
               
                  SizedBox(height: 10,),
                  Text("Connectez-vous",style:TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: maincolor,
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Form(
                        child: Column(
                      children: [
                        TextFormField(
                          cursorColor: maincolor,
                          decoration: InputDecoration(
                              hintText: 'Adresse e-mail',
                              
                              prefixIcon: Icon(Icons.mail,color: maincolor,),
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                 borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          cursorColor: maincolor,
                          decoration: InputDecoration(
                             filled: true,
                              fillColor: Colors.grey[200],
                              prefixIcon: Icon(Icons.lock,color: maincolor,),
                              hintText: 'Mot de passe',
                              //suffixIcon: FaIcon(Icons.lock),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: TextButton(
                              onPressed: () {}, child: Text("Mot de passe oublie ?",style:TextStyle(fontSize: 16,fontStyle: FontStyle.italic,color: maincolor))),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Se connecter", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900)),
                          style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry?>(
                                      EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 100)),
                                          backgroundColor: MaterialStateProperty.all<Color?>(
                                  maincolor) ,
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder?>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40)))),
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Pas de compte ?",
                              style: TextStyle(fontSize: 20),
                            ),
                            TextButton(
                                onPressed: () {
                                  Get.to(SignIn());
                                },
                                child: Text(
                                  "Inscrivez-vous",
                                  style:
                                      TextStyle(fontSize: 20, color: maincolor),
                                ))
                          ],
                        )
                       
                      ],
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
