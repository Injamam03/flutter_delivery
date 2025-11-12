import 'dart:io' show File;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final Color?color;
  final String ? text;
  final TextStyle? textStyle;
  final  BoxBorder? boxBorder;
  final void Function()? ontap;
  final VoidCallback? onPressed;
  //final IconData? icon;
  final String? imageAsset;

  Custombutton({super.key, this.imageAsset,this.color,this.text,this.textStyle,this.boxBorder, this.ontap,this.onPressed});
  ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
   /// <==========this one is image condition so very careful=============>
    if (imageAsset != null) {
      imageProvider = AssetImage(imageAsset!);
    }


    return GestureDetector(
      onTap: onPressed,
      child: Container(

              height: 52,
              width: 295,
              decoration:BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: color,
              border:boxBorder,
              ),

              child: Center(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               if (imageProvider != null)
               Image(image: imageProvider!, height: 24),


             // Icon(icon,color: Colors.amber,),
              SizedBox(width: 10,),
              Text(
              text ?? "", style:textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
