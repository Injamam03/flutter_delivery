import 'package:deliver_app/AppRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart' show Get;

class Rider extends StatefulWidget {
  const Rider({super.key});

  @override
  State<Rider> createState() => _RiderState();
}

class _RiderState extends State<Rider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rider",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      centerTitle: true,
      ),

      body: Column(
        children: [
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 25),
            child: Image.asset("assets/image/location03.png",),
          ),
          SizedBox(height: 20,),
          SizedBox(height: 20,),
          Container(
            height: 6, // লাইনের মোটা
            margin: EdgeInsets.symmetric(horizontal: 80, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(40), // গোল কোণ
            ),
          ),
          Padding(

            padding: EdgeInsets.symmetric(horizontal: 20,vertical:30),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text("Rider is arriving in 10 min",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),)),
          ),
          Divider(

            color: Colors.grey,
            thickness: 4,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 19),
            child: Container(
              height:110,
              width: 450,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                // border: Border.all(color: Colors.green),
              ),
              child: Row(
                children: [
                  // Profile Image
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(

                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/image/profile_img_two.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    clipBehavior: Clip.hardEdge,
                  ),

                  // Name & Location
                  Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            " Hi , Injamam Ul Hoque Sifat",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height:2),
                      Row(

                        children: [

                          Icon(
                            Icons.star,
                            color: Colors.amberAccent,
                            size: 30,
                          ),
                          Text("4.9 ( 45 Tirps)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey),),
                        ],
                      ),

                      Row(
                        children: [
                          Icon(
                            Icons.directions_bike,
                            color: Colors.green,
                            size: 30,
                          ),
                          Text(" Bike: Yamaha YZF-R1,)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey),),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 16,),
          Container(
            height: 50,
            width: 335,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.wifi_calling_3_outlined,color: Colors.white,),
                SizedBox(width: 6,),
                Text("Call Rider",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
              ],
            ),
          ),SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoute.searchingrider);
            },
            child: Container(
              height: 50,
              width: 335,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Cancel Ruquest",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.red),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
