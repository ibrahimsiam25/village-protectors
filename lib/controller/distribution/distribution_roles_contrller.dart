import 'package:get/get.dart';
import 'package:village_protectors/core/constant/images.dart';
import 'package:village_protectors/core/data/data.dart';

class DistributionRolesController extends GetxController {
  late String massage;
  int index = 0;
  late String name;
  String? roles;
  String image ="";
  void addName2() {
    name = playerNamesList[index];
    roles = myMap[name];

    if(roles == "رئيس لصوص"){image=AppImage.bossTheif;}
    else if(roles == "لص"){image=AppImage.theif;}
    else if(roles == "اهل قرية"){image=AppImage.villagePeople;}
    else if(roles == "حامي القريه"){image=AppImage.protecter;}

    if (roles == "رئيس لصوص") {
      String name1 = getKeyByValue("لص");
     
      massage = " $name1\n هو الص ال معاك";
    } else if (roles == "لص") {
      String name1 = getKeyByValue("رئيس لصوص");
      
      massage = " $name1 \nهو رئيس اللصوص ال معاك ";
    } else {
      
      massage = "";
    }

    print(index);
    index++;
    update();
  }

  String getKeyByValue(String value) {
    String name = myMap.keys.where((key) => myMap[key] == value).toString();
    print(name);
    return name;
  }
}
