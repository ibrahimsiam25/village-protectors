import 'package:get/get.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/core/data/data.dart';

class VotingController extends GetxController {
  int index = 0;
  String name = playerNamesList[0];
  Map<String, String> voteMap = {};
  Map<String, int> valueCounts = {};
  bool isMaxNumberRepeated = false;
  int maxNumber = 0;
  List<String> keysList = [];
  int maxNumberRepeated = 0;
  void Voteone(String votename) {
    voteMap[playerNamesList[index]] = votename;
    print(voteMap);
    index++;
    name = playerNamesList[index];
    update();
  }

  void Votetwo(String votename) {
    voteMap[playerNamesList[index]] = votename;
    print(voteMap);
  }

  //معرفه كل اسم اتصوت عليه كام مره
  void getValueCounts() {
    for (var value in voteMap.values) {
      if (valueCounts.containsKey(value)) {
        valueCounts[value] = 1 + valueCounts[value]!;
      } else {
        valueCounts[value] = 1;
      }
    }
    print("${valueCounts}");
  }

  void findMaxNumber() {
    // تحديد العدد الأكبر
    valueCounts.forEach((key, value) {
      if (value > maxNumber) maxNumber = value;
    });
    //تحديد عدد مرات تكرار العدد الاكبر
    valueCounts.forEach((key, value) {
      if (value == maxNumber) {
        maxNumberRepeated++;
      }
    });
    if (maxNumberRepeated > 1) isMaxNumberRepeated = true;

    print('العدد الأكبر: $maxNumber');

    if (isMaxNumberRepeated == false) {
      print('العدد الأكبر غير مكرر');
    }
  }

  void findKeysWithValue() {
    valueCounts.forEach((key, value) {
      if (value == maxNumber) {
        keysList.add(key);
      }
    });
    print("${keysList}الاسماء الاعلي تصويتا");
  }

  // بتحدد هروح لصفحه اكبر رقم معاد ولا لص ولا اهل قريه
  void directionalIdentifcatin() {
    if (isMaxNumberRepeated) {
      print('العدد الأكبر مكرر');
      print('عدد المرات التكرار: ${maxNumberRepeated}');
      Get.offNamed("/directionmaxnorepeated", arguments: keysList);
    } else {
      List<String> name_roles = [keysList[0], myMap[keysList[0]]!];
      if (myMap[keysList[0]] == "اهل قرية" ||
          myMap[keysList[0]] == "حامي القريه") {
        Get.offAllNamed(AppRoute.showRoles, arguments: name_roles);
        print("اهل قريه او حامي قريه");
      }
      if (myMap[keysList[0]] == "لص" || myMap[keysList[0]] == "رئيس لصوص") {
        Get.offAllNamed(AppRoute.showRoles, arguments: name_roles);
        print("لص او رئيس لصوص");
      }
    }
  }
}
