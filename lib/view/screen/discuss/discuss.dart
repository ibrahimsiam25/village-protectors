import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/view/widget/custom_page.dart';

class Discuss extends StatelessWidget {
  const Discuss({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPage(
      text:
          "اَلْآن حَانَ وَقْتُ نِقَاشٍ \nعَلَى أَهْلِ قَرْيَةِ اِكْتِشَافِ مِنْ هَمِّ اَللُّصُوصِ",
      txtBtn: "التصويت",
      onPressed: () {
        Get.offNamed(AppRoute.voting);
      },
    );
  }
}
