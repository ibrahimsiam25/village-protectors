import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/controller/village_people/enlistment_name_controller.dart';
import 'package:village_protectors/controller/village_people/enlistment_roles_controller.dart';
import 'package:village_protectors/core/constant/colors.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/core/data/data.dart';
import 'package:village_protectors/view/widget/custom_button.dart';
import 'package:village_protectors/view/widget/custom_text.dart';

class EnlistmentRoles extends StatelessWidget {
  EnlistmentRoles({Key? key}) : super(key: key);

  final EnlistmentRolesController controller = Get.find();
  final EnlistmentNameController controller2 = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: Center(
        child: 
            GetBuilder<EnlistmentRolesController>(
              builder: (controller) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text:
                        '${controller.name} \n انت ${controller.roles} ${controller.massage} ',

                  ),
                  if (controller.isShow)
                    Expanded(
                      child: ListView.builder(
                        itemCount: controller.nameList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: ListTile(
                              trailing:Text(
                                 controller.nameList[index],
                                style: const TextStyle(
                              fontSize: 35,
                              color: AppColor.textColor,
                              fontFamily: 'Lalezar',
                            ),
                              ),
                              tileColor: AppColor.buttonColor,
                              onTap: () {
                                controller.Chose(controller.nameList[index]);
                                if (controller.index < playerNamesList.length) {
                                  controller2.addName();
                                  Get.back();
                                } else {
                                  Get.offAllNamed(
                                      AppRoute.conversionEvaluation,arguments: controller.ChoseMap);
                                }
                              },
                            ),
                          );
                        },
                      ),
                    ),
                       const SizedBox(height: 60),
            if (!controller.isShow)
              CustomButton(
                txtBtn: 'التالي',
                onPressed: () {
                  if (controller.index < playerNamesList.length) {
                    controller2.addName();
                    Get.back();
                  } else {
                    Get.offAllNamed(AppRoute.conversionEvaluation,arguments: controller.ChoseMap);
                  }
                },
              ),
                ],
              ),
            ),
         
         
      ),
    );
  }
}