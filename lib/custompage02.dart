import 'package:flutter/cupertino.dart' show Placeholder, StatelessWidget, BuildContext, Widget;
import 'package:flutter/material.dart';

class Custompage02 extends StatelessWidget {
  const Custompage02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Image.asset('assets/image/image21.png'),
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              Text("Fast Deliveries, Anytime",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.green),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Text("Need a quick delivery? Simply book a ride, and we’ll take care of the rest. Trust us to get your parcels to their destination, safely and on time."),
              ),
            ],
          )
        ],
      ),

    );
  }
}
