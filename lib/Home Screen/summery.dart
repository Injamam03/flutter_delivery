import 'package:deliver_app/AppRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart' show Get;

class Summery extends StatefulWidget {
  const Summery({super.key});

  @override
  State<Summery> createState() => _SummeryState();
}

class _SummeryState extends State<Summery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Summery",style: TextStyle(
      fontWeight: FontWeight.bold,fontSize: 16,),),
      centerTitle:true,
      backgroundColor: Colors.white,
      ),

      body: Column(
        children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset("assets/image/location02.png"),

          ),
        ///=================================================
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [

                // ১. কার্ড (নিচে)
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        // Recipient Information
                        Text(
                          "Recipient Information",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 12),

                        // নাম
                        Row(
                          children: [
                            Icon(Icons.person, color: Colors.green, size: 18),
                            SizedBox(width: 8),
                            Text("Emma Hardy", style: TextStyle(fontSize: 14)),
                          ],
                        ),

                        SizedBox(height: 8),

                        // ফোন
                        Row(
                          children: [
                            Icon(Icons.phone, color: Colors.green, size: 18),
                            SizedBox(width: 8),
                            Text("(555) 123-4567", style: TextStyle(fontSize: 14)),
                          ],
                        ),

                        SizedBox(height: 8),

                        // ঠিকানা
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on, color: Colors.green, size: 18),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Mangunsari Park, Purwokerto City",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),

                // ২. কালো লাইন (উপরে)
                Positioned(
                  top: 8,
                  child: Container(
                    width: 100,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(2),
                    ),
                    
                  ),
                ), 
                
              ],
            ),
          ),


          Padding(
            padding:EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Recipient Information
                    Text(
                      "Parcel Details",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 12),

                    // নাম
                    Row(
                      children: [
                        Icon(Icons. card_giftcard_rounded, color: Colors.green, size: 18),
                        SizedBox(width: 8),
                        Text("Parcel Type: Gift", style: TextStyle(fontSize: 14)),
                      ],
                    ),

                    SizedBox(height: 8),

                    // ফোন
                    Row(
                      children: [
                        Icon(Icons.monetization_on_outlined, color: Colors.green, size: 18),
                        SizedBox(width: 8),
                        Text("Parcel Value : 100", style: TextStyle(fontSize: 14)),
                      ],
                    ),

                    SizedBox(height: 8),

                    // ঠিকানা
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.social_distance_outlined, color: Colors.green, size: 18),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "Distance: 5 KM",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.monetization_on_sharp, color: Colors.green, size: 18),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "Delivery Charge: 10",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),

          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoute.searchingrider);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 112,vertical: 10),
                child: Text("Send Request ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
