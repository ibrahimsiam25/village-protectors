import 'package:get/get.dart';
import 'package:village_protectors/core/data/data.dart';

class EnlistmentRolesController extends GetxController {
  int index = 0;
  late String name;
  late String? roles;
  bool isShow = false;
  late List<String> nameList;
 Map<String,String> ChoseMap={} ;
String string ="";
String massage ="";
  void addName2() {
    name = playerNamesList[index];
    roles = myMap[name];

    if (roles == "رئيس لصوص") {
       isShow = true;
       string ="رئيس لصوص";
       massage ="عليك اختيار واحد لتجنيده";
      nameList = filterMapValuesTwo("لص","رئيس لصوص");
    } else if (roles == "حامي القريه") {
      isShow = true;
      string="حامي القريه";
      massage="عليك اختيار واحد لحمايته";
      nameList =filterMapValuesOne("حامي القريه") ;
    } else {
      isShow = false;
      massage="";
    }

    print(index);
    index++;
    update();
  }

 List<String> filterMapValuesTwo(String value1, String value2) {
  List<String> list = myMap.keys
      .where((element) => myMap[element] != value1 && myMap[element] != value2)
      .toList();
  print(list);
  return list;
}
  List<String> filterMapValuesOne(String value) {
  List<String> list = myMap.keys.where((key) => myMap[key] != value).toList();
  print(list);
  return list;
}
  void Chose(String personChose) {
   ChoseMap[string] = personChose;
    print(ChoseMap);
  }
}
