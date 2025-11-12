import 'package:deliver_app/AppRoute.dart';
import 'package:deliver_app/customButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
  bool _obscureText = true;


  void _showSuccessPopup() {
    showDialog(
      context: context,
      barrierDismissible:false,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Text("Password Changed!", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text("You can now use your new password to login to your account.",
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]), textAlign: TextAlign.center),
              SizedBox(height: 25),


              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoute.signscreen);
                },
                child: Custombutton(
                  color: Colors.green,
                  text: "Login",textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
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
                  child: Text("Reset Password",style:TextStyle(fontSize: 39,fontWeight: FontWeight.bold,color: Colors.green),)),

              Align(
                  alignment: Alignment.center,
                  child: Text("Please set a new password to secure your account and regain access",style: TextStyle(fontSize: 12),)),
              SizedBox(height: 30,),

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
              SizedBox(height: 20,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Confirm New Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)),
              TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                    labelText:"Re-enter your new password",
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

              SizedBox(height: 35,),

              Custombutton(
                color: Colors.green,
                text: "Save Changes",
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                onPressed: _showSuccessPopup, // এখন কাজ করবে
              ),

            ],
          ),
        ),
      ),


    );
  }
}
