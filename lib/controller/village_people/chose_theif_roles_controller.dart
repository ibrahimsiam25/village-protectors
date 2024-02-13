import 'package:get/get.dart';
import 'package:village_protectors/core/constant/images.dart';
import 'package:village_protectors/core/data/data.dart';

class ChoseTheifRolesController extends GetxController {
  late String massage;
  late String massageTwo;
  int index = 0;
  late String name;
  String? roles;
  String image = "";
  void addName2() {
    name = playerNamesList[index];
    roles = myMap[name];
    showImage();
    showMassage();
    print(index);
    index++;
    update();
  }

  List getKeySByValue(String value) {
    List nameList = myMap.keys.where((key) => myMap[key] == value).toList();
    print(nameList);
    return nameList;
  }

  String getKeyByValue(String value) {
    String nameString = myMap.keys.where((key) => myMap[key] == value).toString();
    print(nameString);
    return nameString;
  }
 
  void showImage() {
    if (roles == "رئيس لصوص") {
      image = AppImage.bossTheif;
    } else if (roles == "لص") {
      image = AppImage.theif;
    } else if (roles == "اهل قرية") {
      image = AppImage.villagePeople;
    } else if (roles == "حامي القريه") {
      image = AppImage.protecter;
    }
  }

  void showMassage() {
    if (roles == "رئيس لصوص") {
      List name1 = getKeySByValue("لص");
      massage = "اللصوص ال معاك هم \n $name1";
      massageTwo='';
    } else if (roles == "لص") {
       String name1 = getKeyByValue("رئيس لصوص");
      massage = "رئيس اللصوص ال معاك هو$name1";
      List list= getKeySByValue("لص");
      list.remove(name);
       massageTwo=',اللصوص ال معاك هم$list';
    } else {
      massage = "";
      massageTwo='';
    }
  }
}
 