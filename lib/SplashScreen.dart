import 'package:deliver_app/Home%20Screen/shared_prefe.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:get/get_navigation/get_navigation.dart';
import 'AppRoute.dart' show AppRoute;

// ================== this is my intro screen or splashScreen =====================================

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}
class _SplashscreenState extends State<Splashscreen> {
  Injamam() async {
    bool? onBoarding = await SharedPreFsHelper.getBool(
      SharedPreFsHelper.onBoarding,
    );
    Future.delayed(const Duration(seconds: 3),(){
      if (onBoarding == true){
        Get.offNamed(AppRoute.homescreen);
      } else {
        Get.offNamed(AppRoute.welcomepage);
      }
    });

  }


  @override
  void initState() {
    Injamam();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,

      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text("Sifat",style:
              TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          ),
        ),
      ),
    );
  }
}
