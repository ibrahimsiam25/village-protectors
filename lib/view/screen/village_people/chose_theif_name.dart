import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/controller/village_people/chose_theif_name_controller.dart';
import 'package:village_protectors/controller/village_people/chose_theif_roles_controller.dart';
import 'package:village_protectors/core/constant/colors.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/view/widget/custom_text.dart';

import '../../../core/data/data.dart';
import '../../widget/custom_button.dart';

class ChoseTheifName extends StatelessWidget {
   ChoseTheifName({super.key});

 final ChoseTheifNmaeController controller = Get.find();
  final ChoseTheifRolesController controller2 = Get.find();

  @override
  Widget build(BuildContext context) {
    print(playerNamesList);
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ChoseTheifNmaeController>(
                builder: (controller) => CustomText(
                    text:
                        "${controller.name} \n\n اعطي الهاتف ل ${controller.name} لكي يعرف دوره في العبه")),
            Container(
              height: 60,
            ),
            CustomButton(
              txtBtn: "اناهو",
              onPressed: () {
                Get.toNamed(AppRoute.choseTeifRoles);
                controller2.addName2();
              
              },
            )
          ],
        ),
      ),
    );
  }
}