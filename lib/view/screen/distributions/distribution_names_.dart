import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/controller/distribution/distribution_names_contrller.dart';
import 'package:village_protectors/controller/distribution/distribution_roles_contrller.dart';
import 'package:village_protectors/core/constant/colors.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/core/data/data.dart';
import 'package:village_protectors/view/widget/custom_button.dart';
import 'package:village_protectors/view/widget/custom_text.dart';

class DistributionNames extends StatelessWidget {
  DistributionNames({Key? key}) : super(key: key);
  final DistributionNamesController controller = Get.find();
  final DistributionRolesController controller2 = Get.find();

  @override
  Widget build(BuildContext context) {
    print(playerNamesList);
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<DistributionNamesController>(
                builder: (controller) => CustomText(
                    text:
                        "${controller.name} \n\n اعطي الهاتف ل ${controller.name} لكي يعرف دوره في العبه")),
            Container(
              height: 60,
            ),
            CustomButton(
              txtBtn: "اناهو",
              onPressed: () {
                Get.toNamed(AppRoute.distributionRoles);
                controller2.addName2();
              
              },
            )
          ],
        ),
      ),
    );
  }
}
