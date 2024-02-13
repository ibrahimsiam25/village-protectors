import 'package:get/get.dart';
import 'package:village_protectors/core/data/data.dart';

class DirectionDiscussController extends GetxController {
  late int thieves;
  late String boosThieves;
   countValue(String sentRoles,) {
    
    return myMap.values.where((roles) => roles == sentRoles).length;
  }

  void addTextToWidet() {
   thieves= countValue("لص");
   int x=countValue("رئيس لصوص");
   if(x==0){boosThieves="و رئيس الصوص خرج من العبه";}
   if(x==1){boosThieves="و رئيس الصوص مازال باقي";}
  }
  @override
  void onInit() {
    addTextToWidet();
    super.onInit();
  }
}
