import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/core/constant/colors.dart';
import 'package:village_protectors/core/constant/images.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/view/widget/custom_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Spacer(
            flex: 1,
          ),
          Image.asset(AppImage.logo,width:250 ,height:253 ,),
          const Spacer(
            flex: 1,
          ),
          CustomButton(
            txtBtn: "ابدأ",
            onPressed: () {
              Get.offNamed(AppRoute.secondPage);
            },
          ),
          const Spacer(
            flex: 3,
          ),
        ]),
      ),
    );
  }
}
