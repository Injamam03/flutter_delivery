import 'package:flutter/cupertino.dart' show Placeholder, StatelessWidget, BuildContext, Widget;
import 'package:flutter/material.dart';

class Custompage03 extends StatelessWidget {
  const Custompage03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          SizedBox(height: 40,),
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Image.asset('assets/image/image22.png',),
          ),

          SizedBox(height: 20,),
          Column(
          children: [
            Text("Ready to Deliver?",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.green),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Text("Let’s get your parcels moving! With just a few taps, your package is on its way. Speedy, secure, and hassle-free deliveries—every time."),
            ),
          ],
          )
        ],
      ),

    );
  }
}
