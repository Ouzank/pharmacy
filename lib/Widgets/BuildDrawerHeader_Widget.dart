// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacylocate/Views/UserProfil_Screen.dart';


Widget buildHeader(
    String name, String email, picprofil, VoidCallback onClicked) {
  return InkWell(
    onTap: onClicked,
    child: Container(
      padding: EdgeInsets.only(left: 15, bottom: 50, top: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(picprofil),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                email,
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: (() => Get.to(UserProfil())),
            child: Container(
              alignment: Alignment.center,
              height: 30,
              width: 60,
              // padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 36, 36, 36),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Modifier",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
