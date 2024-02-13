import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/core/data/data.dart';
import 'package:village_protectors/view/widget/custom_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    getlist() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      print("get");
      playerNamesList = prefs.getStringList("sharedList") ?? [];
    }

    getlist();
    return CustomPage(
      text: 'أَقَلَّ عَدَدٍ لِلَعِبِ خَمْسَةِ أَفْرَادٍ',
      txtBtn: 'هيا بنا نبدأ في أضافه اللاعبون',
      onPressed: () {
        Get.offNamed(AppRoute.addNames);
      },
    );
  }
}
