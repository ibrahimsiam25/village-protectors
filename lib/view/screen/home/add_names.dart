import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/controller/home/add_names_controller.dart';
import 'package:village_protectors/core/constant/colors.dart';
import 'package:village_protectors/core/data/data.dart';

class AddNames extends StatelessWidget {
  AddNames({super.key});
  final AddNamesController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            GetBuilder<AddNamesController>(
              builder: (controller) => Expanded(
                child: ListView.builder(
                  itemCount: playerNamesList.length,
                  itemBuilder: (context, index) {
                    int x = index + 1;
                    return Container(
                        margin: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.textColor,
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              "$x",
                              style: const TextStyle(
                                fontSize: 35,
                                color: AppColor.textColor,
                                fontFamily: 'Farsi',
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Text(
                              playerNamesList[index],
                              style: const TextStyle(
                                fontSize: 25,
                                color: AppColor.textColor,
                                fontFamily: 'Farsi',
                              ),
                            ),
                          ],
                        ));
                  },
                ),
              ),
            ),
            Column(
              children: [
                GetBuilder<AddNamesController>(
                    builder: (controller) => controller.showButton()),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: Get.width / 2.4,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        height: 60,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColor.buttonColor)),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    backgroundColor: AppColor.buttonColor,
                                    title: const Text(
                                      'ادخال اسم الاعب',
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: AppColor.textColor,
                                        fontFamily: 'Lalezar',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    content: TextField(
                                      controller: controller.textcontroller,
                                      onChanged: (value) {
                                        controller.playerName = value;
                                      },
                                      decoration: const InputDecoration(
                                        hintText: 'اسم الاعب',
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          controller.addPlayer();
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "اضافة",
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: AppColor.textColor,
                                            fontFamily: 'Lalezar',
                                          ),
                                        ),
                                      )
                                    ],
                                  );
                                });
                          },
                          icon:
                              const Icon(Icons.add, color: AppColor.textColor),
                          label: Text(
                            'اضافة لاعب',
                            style: TextStyle(
                              fontSize: Get.width / 18,
                              color: AppColor.textColor,
                              fontFamily: 'Lalezar',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: Get.width / 2.4,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        height: 60,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColor.buttonColor)),
                          onPressed: () {
                            controller.removeContainer();
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: AppColor.textColor,
                          ),
                          label: Text(
                            'ازاله لاعب',
                            style: TextStyle(
                              fontSize: Get.width / 18,
                              color: AppColor.textColor,
                              fontFamily: 'Lalezar',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ])),
    );
  }
}
