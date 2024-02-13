import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/controller/village_people/direction_prtecter_controller.dart';
import 'package:village_protectors/view/widget/custom_page.dart';

class DirectionPrtecter extends StatelessWidget {
  DirectionPrtecter({super.key});
 final DirectionPrtecterController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return CustomPage(
      text:controller.massgeTxt,
      txtBtn: controller.btnTxt,
      onPressed: () {controller.goTo();},
    );
  }
}
