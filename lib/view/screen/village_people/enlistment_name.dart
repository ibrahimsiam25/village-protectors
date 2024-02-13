import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/controller/village_people/enlistment_name_controller.dart';
import 'package:village_protectors/controller/village_people/enlistment_roles_controller.dart';
import 'package:village_protectors/core/constant/colors.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/view/widget/custom_button.dart';
import 'package:village_protectors/view/widget/custom_text.dart';

class EnlistmentName extends StatelessWidget {
 EnlistmentName({super.key});
 final EnlistmentNameController controller = Get.find();
  final EnlistmentRolesController controller2 = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<EnlistmentNameController>(
                builder: (controller) => CustomText(
                    text:
                        "${controller.name} \n\n اعطي الهاتف ل ${controller.name} ")),
            Container(
              height: 60,
            ),
            CustomButton(
              txtBtn: "اناهو",
              onPressed: () {
                Get.toNamed(AppRoute.enlistmentRoles);
                controller2.addName2();
              
              },
            )
          ],
        ),
      ),
    );
  }
}