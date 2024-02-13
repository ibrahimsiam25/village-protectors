import 'package:get/get.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/view/screen/village_people/chose_theif_name.dart';
import 'package:village_protectors/view/screen/village_people/chose_theif_roles.dart';
import 'package:village_protectors/view/screen/village_people/conversion_evaluation.dart';
import 'package:village_protectors/view/screen/home/add_names.dart';
import 'package:village_protectors/view/screen/village_people/direction_protecter.dart';
import 'package:village_protectors/view/screen/village_people/enlistment_name.dart';
import 'package:village_protectors/view/screen/village_people/enlistment_roles.dart';
import 'package:village_protectors/view/screen/voting/direction-max_no_repeated.dart';
import 'package:village_protectors/view/screen/discuss/direction_discuss.dart';
import 'package:village_protectors/view/screen/discuss/discuss.dart';
import 'package:village_protectors/view/screen/distributions/distribution_roles_.dart';
import 'package:village_protectors/view/screen/game_over.dart';
import 'package:village_protectors/view/screen/voting/max_number_repeated.dart';
import 'package:village_protectors/view/screen/home/second_page.dart';
import 'package:village_protectors/view/screen/home/home.dart';
import 'package:village_protectors/view/screen/distributions/distribution_names_.dart';
import 'package:village_protectors/view/screen/show_roles.dart';
import 'package:village_protectors/view/screen/voting/voting.dart';
List<GetPage<dynamic>>? routes = [
  // home
  GetPage(name: AppRoute.home, page: () =>const Home()),
  GetPage(name: AppRoute.secondPage, page: () =>const SecondPage()),
  GetPage(name: AppRoute.addNames, page: () => AddNames()),
  //distribution
  GetPage(name: AppRoute.distributionNames, page: () => DistributionNames()),
  GetPage(name: AppRoute.distributionRoles, page: () => DistributionRoles()),
  //voting
  GetPage(name: AppRoute.voting, page: () => Voting()),
  GetPage(name: AppRoute.directionMaxNoRepeated, page: () =>const DirectionMaxNoRepeated()),
  GetPage(name: AppRoute.maxNumberrepeated, page: () => MaxNumberRepeated()),
  //discuss
  GetPage(name: AppRoute.directionDiscuss, page: () => DirectionDiscuss()),
  GetPage(name: AppRoute.discuss, page: () =>const Discuss()),
  //village protector
  GetPage(name: AppRoute.directionPrtecter, page: () => DirectionPrtecter()),
  GetPage(name: AppRoute.enlistmentName ,page: () => EnlistmentName()),
  GetPage(name: AppRoute.enlistmentRoles, page: () => EnlistmentRoles()),
  GetPage(name: AppRoute.conversionEvaluation, page: () => ConversionEvaluation()),
  GetPage(name: AppRoute.choseTeifName, page: () => ChoseTheifName()),
  GetPage(name: AppRoute.choseTeifRoles, page: () => ChoseTheifRoles()),

  GetPage(name:AppRoute.showRoles, page: () => ShowRoles()),
  GetPage(name: AppRoute.gameOver, page: () =>const GameOver()),
];
