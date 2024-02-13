import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/core/constant/colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style:  TextStyle(
          fontFamily: "Farsi",
          fontSize:Get.width/16,
          color: AppColor.textColor,
          height: 2
        ),
      ),
    );
  }
}
