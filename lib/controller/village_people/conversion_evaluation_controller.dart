import 'package:get/get.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/core/data/data.dart';

class ConversionEvaluationController extends GetxController {
  Map<String, String> ChoseMap = Get.arguments;
  String btnTxt = '';
  late String protecterName;
  String? choseProtecter;
   String ? choseBossThief;
  String massage = "";
  bool isDiscuss = false;
  bool isChoseTeif = false;
  bool isGameOver = false;

  @override
  void onInit() {
    conversionEvaluation();
    super.onInit();
  }

  void conversionEvaluation() {
    protecterName = findKeyByValue("حامي القريه");
    choseProtecter  = ChoseMap["حامي القريه"];
    choseBossThief = ChoseMap["رئيس لصوص"];
    print(protecterName);
    print(choseProtecter);
    print(choseBossThief);
    if (choseProtecter == choseBossThief || choseBossThief == protecterName) {
      massage = "التحويل فشل";
      btnTxt = "النقاش";
      isDiscuss = true;
    } else {
      conversionToTheif(choseBossThief!);
      massage = "التحويل ناجح وعدد اللصوص هيزيد واحد";
      btnTxt = "التالي";
      int peopleCount = countValue("حامي القريه", "اهل قرية");
      int theifCount = countValue("لص", "رئيس لصوص");
      if (peopleCount <= theifCount) {
        print("go to game over");
        isGameOver = true;
      }
      if (peopleCount > theifCount) {
        print("go to chose theif");
        isChoseTeif = true;
      }
    }
  }

  void goTo() {
    if (isDiscuss) {
      Get.offAllNamed(AppRoute.discuss);
    }
    if (isChoseTeif) {
      Get.offAllNamed(AppRoute.choseTeifName);
    }
    if (isGameOver) {
      Get.offAllNamed(AppRoute.gameOver,
          arguments:
              "انتهت العبه بفوز اللصوص لان عددهم اصبح اكبر من او يساوي اهل قريه");
    }
  }

  String findKeyByValue(String value) {
  String key="";
    myMap.forEach((k, v) {
      if (v == value) {
        key = k;
      }
    });
    return key;
  }

// بتعدد كام لص او كام اهل قريه
  int countValue(String sentRolesOne, String sentRolestwo) {
    int count = myMap.values.where((roles) => roles == sentRolesOne).length +
        myMap.values.where((roles) => roles == sentRolestwo).length;
    return count;
  }

  // هتحول الشخص المختار من اهل قريه ل لص
  void conversionToTheif(String key) {
    print(myMap);
    if (myMap.containsKey(key)) {
      myMap[key] = "لص";
    }
    print(myMap);
  }
}
