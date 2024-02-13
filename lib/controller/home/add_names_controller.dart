import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:village_protectors/core/data/data.dart';

class AddNamesController extends GetxController {
  int containerCount = 0;
  String playerName = '';
  bool isAddRoles = true;
  TextEditingController textcontroller = TextEditingController();
  List<String> rolesList = [];
  setList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("set");
    prefs.setStringList("sharedList", playerNamesList);
  }

  @override
  void onInit() {
    myMap.clear();
    print("on init add player names");
    super.onInit();
  }

  @override
  void onClose() {
    print("close ");
    rolesList = ["رئيس لصوص", "لص", "حامي القريه"];
    addRoles();
    randomRoles();
    createMap();
    super.onClose();
  }

  void addContainer() {
    containerCount++;
    update();
  }

  void removeContainer() {
    if (playerNamesList.isEmpty) {
      Get.snackbar("خطأ", "لا يوجود اي الاعبين لكي يتم ازالتهم");
    } else {
      containerCount--;
      update();
      playerNamesList.removeLast();
    }
  }

  addPlayer() {
    if (textcontroller.text.isEmpty) {
      Get.snackbar("خطأ", "لا يمكن ان يكون الاسم فارغ");
      textcontroller.clear();
    } else if (playerNamesList.contains(playerName)) {
      Get.snackbar("خطأ", "الاسم موجود بالفعل");
      textcontroller.clear();
    } else {
      playerNamesList.add(playerName);
      addContainer();
      textcontroller.clear();
    }
  }

  Align showButton() {
    Align button = Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: Get.width / 2.4,
        height: 60,
        child: ElevatedButton.icon(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFFFBD17D))),
          onPressed: () {
            setList();
            Get.offNamed("/distributionnames");
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Color(0xFFA94922),
          ),
          label: Text(
            "هيا بنا",
            style: TextStyle(
              fontSize: Get.width / 15,
              color: Color(0xFFA94922),
              fontFamily: 'Lalezar',
            ),
          ),
        ),
      ),
    );
    if (playerNamesList.length >= 5) {
      return button;
    } else {
      return Align();
    }
  }

// بتكمل باقي العدد لاعبين باهل قريه
  void addRoles() {
    if (isAddRoles == true) {
      for (int i = 4; i <= playerNamesList.length; i++) {
        rolesList.add("اهل قرية");
        isAddRoles = false;
      }
    }
    print(rolesList);
  }

// توزيع الادوار بشكل عشوائي
  void randomRoles() {
    Random random = Random();
    for (int i = rolesList.length - 1; i > 0; i--) {
      int j = random.nextInt(i + 1);
      String temp = rolesList[i];
      rolesList[i] = rolesList[j];
      rolesList[j] = temp;
    }
    print(rolesList);
  }

  // تربط الاسماء بادورها في العبه mapعمل
  void createMap() {
    int minLength = playerNamesList.length < rolesList.length
        ? playerNamesList.length
        : rolesList.length;

    for (int i = 0; i < minLength; i++) {
      myMap[playerNamesList[i]] = rolesList[i];
    }
    print(myMap);
  }
}
