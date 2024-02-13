import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/view/widget/custom_page.dart';

class DirectionMaxNoRepeated extends StatelessWidget {
  const DirectionMaxNoRepeated({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> name = Get.arguments;
    return CustomPage(
      text:
          "نسبه تصويت متساويه بين \n ${name} \n عليهم مواجهة بعض لأكتشاف من هو الص",
      txtBtn: "تصويت",
      onPressed: () {
        Get.offNamed(AppRoute.maxNumberrepeated, arguments: name);
      },
    );
  }
}
