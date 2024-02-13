import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/controller/village_people/conversion_evaluation_controller.dart';
import 'package:village_protectors/view/widget/custom_page.dart';

class ConversionEvaluation extends StatelessWidget {
  ConversionEvaluation({super.key});
  final ConversionEvaluationController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return CustomPage(
        text: controller.massage,
        txtBtn: controller.btnTxt,
        onPressed: () {
          controller.goTo();
        });
  }
}
