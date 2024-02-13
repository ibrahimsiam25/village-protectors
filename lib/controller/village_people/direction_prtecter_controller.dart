import 'package:get/get.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/core/data/data.dart';

class DirectionPrtecterController extends GetxController {
  late String massgeTxt;
  late String btnTxt;
  String bossTheifProtector ="رئيس اللصوص عليه تنجيد لص جديد معه من اهل قريه \n وحامي القريه عليه حاميه واحد من ال موجدين في العبه";
  String protectorOutOnly ="حامي القريه خرج لا يوجود حمايه علي اهل قرية و علي رئيس اللصوص اختيار واحد من اهل قريه لتجنيده";
  String bossTheifOutOnly = " رئيس اللصوص خرج لا يوجد تجنيد والحامي لسه موجود";
  String bossTheifOutProtectorOut ="رئيس اللصوص خرج والحامي خرج لا يوجود تجنيد";
  late int bossTheifCount;
  late int protectorCount;
  // بتعدد كام لص او كام اهل قريه
  int countValue(String sentRolesOne) {
    int count = myMap.values.where((roles) => roles == sentRolesOne).length;
    return count;
  }

  void showText() {
    print("bossTheifCount${bossTheifCount} \n protectorCount ${protectorCount} ");
    if (bossTheifCount == 1 && protectorCount == 1) {
      massgeTxt = bossTheifProtector;
    }
    if (bossTheifCount == 0 && protectorCount == 1) {
      massgeTxt = bossTheifOutOnly;
    }
    if (bossTheifCount == 1 && protectorCount == 0) {
      massgeTxt= protectorOutOnly;
    }
    if (bossTheifCount == 0 && protectorCount == 0) {
      massgeTxt = bossTheifOutProtectorOut;
    }
  }
  void goTo(){
    if(bossTheifCount==0){Get.offAllNamed(AppRoute.discuss);}
    if(bossTheifCount==1){Get.offAllNamed(AppRoute.enlistmentName);}
  }

  @override
  void onInit() {
    bossTheifCount = countValue("رئيس لصوص");
    protectorCount = countValue("حامي القريه");
    if(bossTheifCount==0){btnTxt="نقاش";}
    if(bossTheifCount==1){btnTxt="تجنيد";}
    showText();
    super.onInit();
  }
}
