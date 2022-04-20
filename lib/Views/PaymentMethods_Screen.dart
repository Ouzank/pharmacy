import 'package:flutter/material.dart';
import 'package:pharmacylocate/Constants/Constants.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title: const Text("Methode de Payement"),
         centerTitle: true
      ),
    );
  }
}