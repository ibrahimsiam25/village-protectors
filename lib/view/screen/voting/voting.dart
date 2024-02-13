import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/controller/voting/voting_controller.dart';
import 'package:village_protectors/core/constant/colors.dart';
import 'package:village_protectors/core/data/data.dart';
import 'package:village_protectors/view/widget/custom_text.dart';

// ignore: must_be_immutable
class Voting extends StatelessWidget {
  Voting({super.key});
  final VotingController controller = Get.find();
  int indexName = 0;
  @override
  Widget build(BuildContext context) {
    print(myMap);
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: Center(
        child: GetBuilder<VotingController>(
          builder: (controller) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,
              ),
              CustomText(text: "${controller.name} \n بتشك في مين ان هو الص"),
              Expanded(
                child: ListView.builder(
                  itemCount: playerNamesList.length,
                  itemBuilder: (context, index) {
                    if (index == controller.index) {
                      return const SizedBox.shrink();
                    } else {
                      return Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 10, vertical: 5),
                        child: ListTile(
                          trailing: Text(
                            playerNamesList[index],
                            style: const TextStyle(
                              fontSize: 35,
                              color: AppColor.textColor,
                              fontFamily: 'Lalezar',
                            ),
                          ),
                          tileColor: AppColor.buttonColor,
                          onTap: () {
                            indexName++;
                            if (indexName < playerNamesList.length)
                              controller.Voteone(playerNamesList[index]);
                            if (indexName == playerNamesList.length) {
                              controller.Votetwo(playerNamesList[index]);
                              controller.getValueCounts();
                              controller.findMaxNumber();
                              controller.findKeysWithValue();
                              controller.directionalIdentifcatin();
                            }
                          },
                        ),
                      );
                    }
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
