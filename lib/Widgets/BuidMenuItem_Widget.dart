import 'package:flutter/material.dart';



Widget buildMenuItem(String title, IconData icon, VoidCallback? onClicked) {
  return ListTile(
    leading: Icon(icon,size: 40,),
    title: Text(title,style: TextStyle(fontSize: 18),),
    hoverColor: Colors.black,
    onTap: onClicked,
  );
}
