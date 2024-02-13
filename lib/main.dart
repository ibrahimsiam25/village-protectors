import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_protectors/core/constant/routes.dart';
import 'package:village_protectors/mybindings.dart';
import 'package:village_protectors/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MyBindings(),
      initialRoute: AppRoute.home ,
      getPages:routes
    );
  }
}