import 'package:deliver_app/AppRoute.dart';
import 'package:deliver_app/customButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 100,),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Forget Password",style:TextStyle(fontSize: 39,fontWeight: FontWeight.bold,color: Colors.green),)),

              Center(child: Text("Enter the phone number associated with your account and we’ll send you OTP to reset your password",style: TextStyle(fontSize: 12),)),
              SizedBox(height: 10,),

              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Phone",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
              SizedBox(height: 8,),
              TextField(
                decoration: InputDecoration(
                  labelText: " Ex : +980010101010",
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),

                  ),
                ),
              ),
              SizedBox(height:20,),


            GestureDetector(

              onTap: (){
                Get.toNamed(AppRoute.verifyOTP);
              },
              child: Custombutton(
                color: Colors.green,
                text: 'Confirm',textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),
              ),
            ),

            ],
          ),
        ),
      ),


    );
  }
}
