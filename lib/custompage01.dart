import 'package:flutter/cupertino.dart' show Placeholder, StatelessWidget, BuildContext, Widget;
import 'package:flutter/material.dart';

class Custompage01 extends StatelessWidget {
  const Custompage01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Column(
           children: [
             SizedBox(height: 40,),
             Image.asset('assets/image/image20.png'),
             SizedBox(height: 20,),
             Column(
             children: [
             Text("Welcome to Delivery App",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.green),),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
               child: Text("Your go-to solution for fast, reliable parcel \n delivery. Whether you're sending or receiving, we\n make it easy and quick."),
             ),
             ],
             )
           ],
         ),
    );
  }
}
