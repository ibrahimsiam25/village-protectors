import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/controller/voting/max_number_repeated_controller.dart';
import 'package:village_protectors/core/constant/colors.dart';
import 'package:village_protectors/view/widget/custom_text.dart';

// ignore: must_be_immutable
class MaxNumberRepeated extends StatelessWidget {
  MaxNumberRepeated({super.key});
  final MaxNumberRepeatedController controller = Get.find();
  int indexName = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: Center(
        child: GetBuilder<MaxNumberRepeatedController>(
          builder: (controller) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
              ),
            CustomText(text: "${controller.name} \n بتشك في مين ان هو الص"),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.sentsnames.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:const EdgeInsetsDirectional.symmetric(
                          horizontal: 10, vertical: 5),
                      child: ListTile(
                        trailing: Text(
                          controller.sentsnames[index],
                          style:const TextStyle(
                            fontSize: 35,
                            color:AppColor.textColor,
                            fontFamily: 'Lalezar',
                          ),
                        ),
                        tileColor: AppColor.buttonColor,
                        onTap: () {
                          indexName++;
                          if (indexName < controller.actualnames.length){
                            controller.Voteone(controller.sentsnames[index]);}
                          if (indexName == controller.actualnames.length) {
                            controller.Votetwo(controller.sentsnames[index]);
                            controller.getValueCounts();
                              controller.findMaxNumber();
                              controller.findKeysWithValue();
                              controller.directionalIdentifcatin();
                          }
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
