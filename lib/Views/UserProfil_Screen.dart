import 'package:flutter/material.dart';
import 'package:pharmacylocate/Constants/Constants.dart';

class UserProfil extends StatelessWidget {
  const UserProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title:const Text("Modifier le profil"),
      ),
    );
  }
}