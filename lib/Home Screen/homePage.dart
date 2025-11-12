import 'package:deliver_app/AppRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart' show Get;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              // Header Section
              Container(
                height: 98,
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  // border: Border.all(color: Colors.green),
                ),
                child: Row(
                  children: [
                    // Profile Image
                    Container(
                      width: 80,
                      height: 100,
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
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 24.0,
                            ),
                            Text("Cox's Bazar, Bangladesh"),
                          ],
                        ),
                      ],
                    ),
        
                    Spacer(),
        
                    // Notification Icon
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.notifications_active_outlined, size: 40),
                    ),
                  ],
                ),
              ),
        
              // Track Parcel Section
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff139F25),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              "Track your Parcel",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Please enter your order id",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(height: 5),
        
                          // TextField for Order ID
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Order ID",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
        
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                    child: Container(
        
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.greenAccent],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal:0,
                                  vertical: 10,
                                ),
                                child: Text(
                                  "Fast. Reliable. Hassle-\nFree Parcel Delivery.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 0,
                                ),
                                child: Text(
                                  "Your trusted partner for fast & \n safe,  deliveries. Send or receive\n with ease. Start shipping today!",
                                ),
                              ),
                            ],
                          ),
        
                          /// this is containar picture=================>>>>>
                          Row(
                            children: [
                              Image.asset('assets/image/container_Pic_1.png',fit: BoxFit.cover,)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 0),
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoute.chooselocation);
                  },
                  child: Container(
                    height: 80,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.green, width: 2),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/image/box_1.png',fit: BoxFit.cover,),
                        ),

                        Text("Create New Shipment",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                      ],
                    ),

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(alignment: Alignment.centerLeft,
                  child: Text("Recent ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),

              SizedBox(height: 10,),
              Container(
                height: 80,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/image/box2.png',fit: BoxFit.cover,),
                    ),
        
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
        
                        Text("Robert Downy",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        Text("D.I Panjaitan Street, Purwokerto City"),
                        Text("10 April 2025 , 10:30 am")
                      ],
                    )
                  ],
                ),
        
              ),
              SizedBox(height: 10,),
              Container(
                height: 80,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/image/box2.png',fit: BoxFit.cover,),
                    ),
        
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
        
                        Text("Robert Downy",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        Text("D.I Panjaitan Street, Purwokerto City"),
                        Text("10 April 2025 , 10:30 am")
                      ],
                    )
                  ],
                ),
        
              ),
            ],
          ),
        ),
      ),
    );
  }
}
