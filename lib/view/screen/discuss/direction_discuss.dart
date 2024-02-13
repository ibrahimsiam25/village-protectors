import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:village_protectors/controller/discuss/direction_discuss_controller.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/view/widget/custom_page.dart';

class DirectionDiscuss extends StatelessWidget {
  DirectionDiscuss({super.key});
  final DirectionDiscussController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return CustomPage(
      text:
          "عدد الصوص المتبقيه:${controller.thieves} \n ${controller.boosThieves}",
      txtBtn: "التالي",
      onPressed: () {
        Get.offNamed(
          AppRoute.discuss,
        );
      },
    );
  }
}
