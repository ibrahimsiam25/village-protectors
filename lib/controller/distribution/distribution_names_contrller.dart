import 'package:get/state_manager.dart';
import 'package:village_protectors/core/data/data.dart';

class DistributionNamesController extends GetxController {
  //bool isAddRoles = true;
  int index = 1;
  String name =playerNamesList[0];
 
  
  void addName (){
    name=playerNamesList[index];
    index++;
    update();
  }
 
}