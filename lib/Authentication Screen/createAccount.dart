import 'package:deliver_app/AppRoute.dart';
import 'package:deliver_app/buttonController.dart';
import 'package:deliver_app/customButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Createaccount extends StatefulWidget {
  const Createaccount({super.key});

  @override
  State<Createaccount> createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {

  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height:50,),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("Create Your Account",style:TextStyle(fontSize: 39,fontWeight: FontWeight.bold,color: Colors.green),)),

                Text("Join us to explore top Canadian-made products, exclusive deals, and great rewards",style: TextStyle(fontSize: 12),),
                SizedBox(height: 10,),
                Text("Select your role",style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold,),),
                SizedBox(height: 20,),

                /// this ons is two role button
                ///
                GetBuilder<ButtonController>(
                  builder: (controller) {
                    return Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          /// this one is frist button
                          ///
                          GestureDetector(
                            onTap:(){

                              controller.iscolor=true;
                              controller.update();
                              setState(() {
                                controller.iscolor=!controller.iscolor;
                              });

                            },
                            child: Container(
                              height: 48,
                              width: 141,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green,width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color:controller.iscolor? Colors.white: Colors.green,
                              ),
                              child:
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("User",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                  color: controller.iscolor ? Colors.black: Colors.white),
                                  )),

                            ),
                          ),

                          /// this one is second button
                          GestureDetector(
                            onTap:(){
                              controller.iscolor=false;
                              controller.update();
                              setState(() {
                                controller.iscolor=!controller.iscolor;
                              });
                      },
                            child: Container(
                              height: 48,
                              width: 141,
                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(10),
                                color: controller.iscolor? Colors.green: Colors.white,
                                border: Border.all(
                                  color: Colors.green,
                                  width: 2,
                                )
                              ),
                              child:
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Rider",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                      color: controller.iscolor? Colors.white: Colors.black),)),


                            ),
                          ),


                        ],

                      ),
                    );
                  }
                ),

                SizedBox(height:10),

                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Full name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                SizedBox(height: 8,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your full name",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                  ),
                ),
                SizedBox(height:10,),

                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Email",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                SizedBox(height: 8,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your email address",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                  ),
                ),
                SizedBox(height:10,),  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Phone",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                SizedBox(height: 8,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your phone number",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                  ),
                ),
                SizedBox(height:10,),

                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                SizedBox(height: 8,),

                TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      labelText:"Enter your password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                      suffixIcon: IconButton(icon: Icon(_obscureText ? Icons.visibility_off:
                      Icons.visibility,color: Colors.black,),
                        onPressed: (){
                          setState(() {
                            _obscureText=!_obscureText;
                          });
                        },)
                  ),
                ),
                SizedBox(height: 10,),

                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Confirm Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                SizedBox(height: 8,),

                TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      labelText:"Enter password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                      suffixIcon: IconButton(icon: Icon(_obscureText ? Icons.visibility_off:
                      Icons.visibility,color: Colors.black,),
                        onPressed: (){
                          setState(() {
                            _obscureText=!_obscureText;
                          });
                        },)
                  ),
                ),

                SizedBox(height: 15,),

                GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoute.verifyOTP2);
                  },

                  child: Custombutton(
                    color: Colors.green,
                    text:"Continue",textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
                SizedBox(height: 2,),
                Text("or"),
                SizedBox(height: 2,),
                Custombutton(
                  color: Colors.white,
                  boxBorder: Border.all(
                    color: Colors.green,width: 2,
                  ),
                  imageAsset:  "assets/image/Frame.png",
                  text:"Continue with Google",textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),
                ),
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account? "),
                    GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoute.signscreen);
                        },
                        child: Text("Sign In",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.green),)),
                  ],
                ),
                SizedBox(height: 15,),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
