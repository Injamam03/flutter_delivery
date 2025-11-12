import 'package:deliver_app/AppRoute.dart';
import 'package:deliver_app/customButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:get/get_navigation/get_navigation.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {

  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 80,),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Welcome Back",style:TextStyle(fontSize: 39,fontWeight: FontWeight.bold,color: Colors.green),)),

              Text("Log in to continue shopping and enjoy personalized offers",style: TextStyle(fontSize: 12),),
              SizedBox(height: 10,),

              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Email or Phone Number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
              SizedBox(height: 8,),
              TextField(
                decoration: InputDecoration(
                labelText: "Enter your email address",
                border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),

                ),
              ),
             ),
              SizedBox(height:20,),

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

              SizedBox(height: 15,),
              Align(
                alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.forgetPassword);
                    },
                      child: Text("forget passwort",style: TextStyle(color: Colors.green),))),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoute.homescreen);
                },
                child: Custombutton(
                  color: Colors.green,
                  text:"sign in",textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
              SizedBox(height: 10,),
              Text("or"),
              SizedBox(height: 20,),
              Custombutton(

                boxBorder: Border.all(color: Colors.green),
                imageAsset:  "assets/image/Frame.png",

                text:'Continue with Google',textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account? "),
                  GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoute.createAccount);
                      },
                      child: Text("Create account",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.green),)),
                ],
              )

            ],
          ),
        ),
      ),

      
    );
  }
}
