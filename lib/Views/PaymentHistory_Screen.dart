import 'package:flutter/material.dart';
import 'package:pharmacylocate/Constants/Constants.dart';



class PaymentHistory extends StatelessWidget {
  const PaymentHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title:const Text("Historique des achats"),
        centerTitle:true
      ),
    );
  }
}