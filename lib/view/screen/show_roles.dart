import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/controller/show_roles_controller.dart';
import 'package:village_protectors/view/widget/custom_page.dart';

class ShowRoles extends StatelessWidget {
  ShowRoles({super.key});
  final ShowRolesController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return CustomPage(
      text: "${controller.name_roles[0]} \n  هو ${controller.name_roles[1]}\n هو كدا خرج من اللعبة  ",
      txtBtn: "التالي",
      onPressed: () {
        controller.directionalIdentifcatin();
      },
    );
  }
}
