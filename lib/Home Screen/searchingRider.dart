import 'package:deliver_app/AppRoute.dart' show AppRoute;
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:get/route_manager.dart';

class Searchingrider extends StatefulWidget {
  const Searchingrider({super.key});

  @override
  State<Searchingrider> createState() => _SearchingriderState();
}

class _SearchingriderState extends State<Searchingrider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Searching Rider",style: TextStyle(
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
          SizedBox(height: 20,),

          Positioned(
            top: 8,
            child: Container(
              width: 300,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(20),
              ),

            ),
          ),
          ///=================================================
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical:5),
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
                    padding: EdgeInsets.only(top: 60, left: 10, right: 10, bottom: 10),
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
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// <==============================>
                        GestureDetector(
                          onTap: (){
                            Get.toNamed(AppRoute.rider);
                          },
                          child: Text(
                            "Searching Rider",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        SizedBox(height: 6),

                        Row(
                          children: [
                            Container(
                              height: 3,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            Container(
                              height: 3,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding:EdgeInsets.symmetric(horizontal: 16,vertical:5),
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

          ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(
                color: Colors.red,
                width: 2,
                )
              ), onPressed: (){

                showModalBottomSheet(context: context, builder: (BuildContext context){
                  return SizedBox(
                    height: 535,
                    width: double.maxFinite,

                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Image.asset("assets/image/illustration.png"),
                        SizedBox(height: 20,),
                        Text("Are you Sure you Want to \nCancel?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("Cancelling will remove all your order details. If\n you proceed, you’ll need to start a new order."),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: (){
                            Get.toNamed(AppRoute.homescreen);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 112,vertical: 10),
                              child: Text("Yes ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
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
                              color: Colors.white,
                              border: Border.all(color: Colors.grey,width: 2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 112,vertical: 10),
                              child: Text("No ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.green),),
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  );
                });
                
          }, child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 88,vertical: 10),
            child: Text("Cancel Ruquest",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.red),),
          ))
          
        ],
      ),

    );
  }
}
