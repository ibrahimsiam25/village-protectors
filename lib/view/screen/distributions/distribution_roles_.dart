import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/controller/distribution/distribution_names_contrller.dart';
import 'package:village_protectors/controller/distribution/distribution_roles_contrller.dart';
import 'package:village_protectors/core/constant/colors.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/core/data/data.dart';
import 'package:village_protectors/view/widget/custom_button.dart';
import 'package:village_protectors/view/widget/custom_text.dart';

class DistributionRoles extends StatelessWidget {
  DistributionRoles({Key? key}) : super(key: key);
  final DistributionRolesController controller = Get.find();
  final DistributionNamesController controller2 = Get.find();

  @override
  Widget build(BuildContext context) {
    print("rebuild roles two");

    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<DistributionRolesController>(
                builder: (controller) => Column(
                      children: [
                        CustomText(
                            text:
                                "${controller.name} \n انت ${controller.roles}  \n ${controller.massage}"),
                              Image.asset(controller.image,width: 200,height: 200,)
                      ],
                    )),
            Container(
              height: 60,
            ),
            CustomButton(
              txtBtn: "التالي",
              onPressed: () {
                if (controller.index < playerNamesList.length) {
                  controller2.addName();
                  Get.back();
                } else {
                  Get.offAllNamed(AppRoute.discuss);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
