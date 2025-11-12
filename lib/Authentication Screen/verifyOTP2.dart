import 'package:deliver_app/AppRoute.dart';
import 'package:deliver_app/customButton.dart' show Custombutton;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:pin_code/pin_code.dart' show PinCode, PinCodeTheme, PinCodeFieldShape;

class Verifyotp2 extends StatefulWidget {
  const Verifyotp2({super.key});

  @override
  State<Verifyotp2> createState() => _Verifyotp2State();
}

class _Verifyotp2State extends State<Verifyotp2> {
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
                  child: Text("Verify OTP",style:TextStyle(fontSize: 39,fontWeight: FontWeight.bold,color: Colors.green),)),

              Center(child: Text("Enter your OTP which has been sent to your phone and completely verify your account.",style: TextStyle(fontSize: 12),)),
              SizedBox(height: 20,),


              PinCode(
                appContext: context,
                length: 4,
                obscureText: true, // Oculta los dígitos
                obscuringCharacter: '●',
                enableActiveFill: true, // Habilita el color de fondo
                onCompleted: (value) {
                  //log("🔑 Passcode entered: $value");
                },
                pinTheme: PinCodeTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 60,
                  fieldWidth: 60,
                  // Colores que funcionan bien en modo oscuro
                  activeColor: Colors.blueAccent,
                  inactiveColor: Colors.greenAccent,
                  selectedColor: Colors.red,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.greenAccent,
                  selectedFillColor: Colors.white,
                ),
                textStyle: const TextStyle(color: Colors.blueAccent, fontSize: 24),
              ),
              SizedBox(height: 20,),

              Text("A code has been sent to your phone number"),
              SizedBox(height: 10,),
              Text("Resend in 00:57",style: TextStyle(fontSize: 14,color: Colors.green,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),



              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoute.homescreen);
                },
                child: Custombutton(
                  color: Colors.green,
                  text: 'Verify',textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),
                ),
              ),

            ],
          ),
        ),
      ),


    );
  }
}
