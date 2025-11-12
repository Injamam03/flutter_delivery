import 'package:deliver_app/AppRoute.dart';
import 'package:deliver_app/customButton.dart';
import 'package:deliver_app/custompage01.dart';
import 'package:deliver_app/custompage02.dart';
import 'package:deliver_app/custompage03.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {

  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          SizedBox(height: 75,),
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                Custompage01(),
                Custompage02(),
                Custompage03(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const WormEffect(
              dotHeight: 16,
              dotWidth: 16,
              type: WormType.thinUnderground,
            ),
          ),
          SizedBox(height: 45,),
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoute.signscreen);
          },
            child: Custombutton(
              
              color: Colors.green,
              text: "sign in",textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),
            ),
          ),
          SizedBox(height: 20,),

          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoute.createAccount);
            },
            child: Custombutton(
              color: Colors.white,
              boxBorder:Border.all(color: Colors.green),
              text: "sign up",textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),
            ),
          ),
           SizedBox(height: 69,)
        ],
      ),
    );
  }
}
