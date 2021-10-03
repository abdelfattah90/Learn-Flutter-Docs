import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';
import 'routes/routes_pages.dart';
import 'widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Docs',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: mainColor),
      ),
      home: const HomePage(),
      getPages: getPages,
    );
  }
}
