
import 'package:get/get.dart';
import 'package:village_protectors/controller/home/add_names_controller.dart';
import 'package:village_protectors/controller/discuss/direction_discuss_controller.dart';
import 'package:village_protectors/controller/distribution/distribution_names_contrller.dart';
import 'package:village_protectors/controller/distribution/distribution_roles_contrller.dart';
import 'package:village_protectors/controller/village_people/chose_theif_name_controller.dart';
import 'package:village_protectors/controller/village_people/chose_theif_roles_controller.dart';
import 'package:village_protectors/controller/village_people/conversion_evaluation_controller.dart';
import 'package:village_protectors/controller/village_people/direction_prtecter_controller.dart';
import 'package:village_protectors/controller/village_people/enlistment_name_controller.dart';
import 'package:village_protectors/controller/village_people/enlistment_roles_controller.dart';
import 'package:village_protectors/controller/voting/max_number_repeated_controller.dart';
import 'package:village_protectors/controller/show_roles_controller.dart';
import 'package:village_protectors/controller/voting/voting_controller.dart';


class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNamesController(),          fenix: true);
    Get.lazyPut(() => DistributionNamesController (),fenix: true);
    Get.lazyPut(() => DistributionRolesController(), fenix: true);
    Get.lazyPut(() => VotingController(),            fenix: true);
    Get.lazyPut(() => MaxNumberRepeatedController(), fenix: true);
    Get.lazyPut(() => ShowRolesController(),         fenix: true);
    Get.lazyPut(() => DirectionDiscussController(),  fenix: true);
    Get.lazyPut(() => DirectionPrtecterController(), fenix: true);
    Get.lazyPut(() => EnlistmentNameController(),    fenix: true);
    Get.lazyPut(() => EnlistmentRolesController(),   fenix: true);
    Get.lazyPut(() => ConversionEvaluationController(),   fenix: true);
    Get.lazyPut(() => ChoseTheifNmaeController(),   fenix: true);
    Get.lazyPut(() => ChoseTheifRolesController(),   fenix: true);
  }

}