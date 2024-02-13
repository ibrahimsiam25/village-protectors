import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/view/widget/custom_page.dart';

class GameOver extends StatelessWidget {
  const GameOver({super.key});

  @override
  Widget build(BuildContext context) {
    String gameOver = Get.arguments;
    return CustomPage(
      text: gameOver,
      txtBtn: "بدأ مبارة جديده",
      onPressed: () {
        Get.offNamed(
          AppRoute.secondPage,
        );
      },
    );
  }
}
