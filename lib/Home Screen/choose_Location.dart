import 'package:deliver_app/AppRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart' show Get;

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose Location",style:
        TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      centerTitle: true,
      backgroundColor: Colors.white,),

      body:
        Column(
          children: [
            Row(
              children: [

                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.circle,color: Colors.green,),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pick up location",style: TextStyle(fontSize: 12,color: Colors.grey),),
                        Text("Hatari Housing No.21, Wangon",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
                      ],
                    )
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_drop_down_sharp),
              ],

            ),
            SizedBox(height: 10,),
            Row(
              children: [

                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.location_on,color: Colors.green,),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Destination",style: TextStyle(fontSize: 12,color: Colors.grey),),
                        Text("Mangunsari Park, Purwokerto City",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
                      ],
                    )
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_drop_down_sharp),
              ],

            ),
            SizedBox(height: 15,),

            Image.asset('assets/image/location01.png',),
            SizedBox(height: 10,),




            GestureDetector(
              onTap: (){
                Get.toNamed(AppRoute.parcelpetails);
              },
              child: Container(
                decoration: BoxDecoration(
                 color: Colors.green,
                  borderRadius: BorderRadius.circular(29)
                ),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 98,vertical: 10),
                  child: Text("Confirm Location",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                ),
              ),
            )
          ],
        ),
    );
  }
}
