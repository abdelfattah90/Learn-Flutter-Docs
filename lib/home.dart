import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Flutter Documentation'),
      body: ListView(children: [
        ListTile(
          title: const Text('Flutter UI'),
          onTap: () => Get.toNamed('/ProjectFlutterUI'),
        ),
        ListTile(
          title: const Text('Ecommerce Clothes UI'),
          onTap: () => Get.toNamed('/ProjectEcommerceClothes'),
        ),
        ListTile(
          title: const Text('Get Data API'),
          onTap: () => Get.toNamed('/GetDataAPI'),
        ),
        ListTile(
          title: const Text('Sqflite App'),
          onTap: () => Get.toNamed('/SqfliteApp'),
        ),
        ListTile(
          title: const Text('Bmi Calculator'),
          onTap: () => Get.toNamed('/BmiCalculator'),
        ),
        ListTile(
          title: const Text('Quizz App'),
          onTap: () => Get.toNamed('/QuizzApp'),
        ),
        ListTile(
          title: const Text('Seacrchable'),
          onTap: () => Get.toNamed('/Seacrchable'),
        ),
        ListTile(
          title: const Text('Url Launcher Plugin'),
          onTap: () => Get.toNamed('/UrlLauncherPlugin'),
        ),

        ListTile(
          title: const Text('Percent Indicator Plugin'),
          onTap: () => Get.toNamed('/PercentIndicatorPlugin'),
        ),
      ]),
    );
  }
}
