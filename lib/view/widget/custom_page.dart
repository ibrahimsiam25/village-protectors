import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/core/constant/colors.dart';

class CustomPage extends StatelessWidget {
  final String text;
  final String txtBtn;
  final void Function()? onPressed;
  const CustomPage(
      {super.key, required this.text, required this.txtBtn, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            Text(
              text,
              textAlign: TextAlign.center,
              style:  TextStyle(
                fontFamily: "Farsi",
                fontSize:Get.height/15,
                color: AppColor.textColor,
              ),
            ),
            const Spacer(flex: 1),
            ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.buttonColor,
                elevation: 15,
                shadowColor: AppColor.shadowColor,
                side: const BorderSide(color: AppColor.textColor, width: 2),
                shape: const StadiumBorder(),
              ),
              child: Text(
                txtBtn,
                textAlign: TextAlign.center,
                style:  TextStyle(
                  fontSize: Get.width/12,
                  color: AppColor.textColor,
                  fontFamily:'Lalezar',
                ),
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
