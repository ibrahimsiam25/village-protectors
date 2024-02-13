import 'package:get/get.dart';
import 'package:village_protectors/core/data/data.dart';

class ChoseTheifNmaeController extends GetxController{
  int index = 1;
  String name =playerNamesList[0];
 
  
  void addName (){
    name=playerNamesList[index];
    index++;
    update();
  }
}