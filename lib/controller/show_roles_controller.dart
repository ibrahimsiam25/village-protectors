import 'package:get/get.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/core/data/data.dart';

class ShowRolesController extends GetxController {
  List<String> name_roles = Get.arguments;
  late String gameOver;
  // بتعدد كام لص او كام اهل قريه
   int countValue(String sentRolesOne,String sentRolestwo) {
  int  count = myMap.values.where((roles) => roles == sentRolesOne).length +
        myMap.values.where((roles) => roles == sentRolestwo).length;
        return count;
  }

  void directionalIdentifcatin() {
    print(name_roles);
    print(playerNamesList);
    print(myMap);
    playerNamesList.remove(name_roles[0]);
    myMap.remove(name_roles[0]);
    print(playerNamesList);
    print(myMap);
    if (name_roles[1] == "لص" || name_roles[1] == "رئيس لصوص") {
     int theifCount= countValue("لص", "رئيس لصوص");
      print(theifCount);
      gameOver="انتهت العبه بفوز اهل قرية لان اللصوص خرجو جمعيا";
      if(theifCount<=0)Get.offAllNamed(AppRoute.gameOver,arguments: gameOver);
      if(theifCount>0)Get.offAllNamed(AppRoute.directionDiscuss);
    }
    if (name_roles[1] == "حامي القريه" || name_roles[1] == "اهل قرية") {
     int peopleCount = countValue("حامي القريه", "اهل قرية");
      int theifCount =countValue("لص", "رئيس لصوص");
      print("${peopleCount} peoplecount");
      print("${theifCount}theifCount");
      gameOver= "انتهت العبه بفوز اللصوص لان عددهم اصبح اكبر من او يساوي اهل قريه";
      if(peopleCount<=theifCount ){
        print("go to game over");
        Get.offAllNamed(AppRoute.gameOver,arguments: gameOver);}
      if(peopleCount>theifCount ){
         print("go to direction prtecter");
        Get.offAllNamed(AppRoute.directionPrtecter);}
    }
  }
}
