import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/home/home_screen.dart';

class EcommerceClothes extends StatelessWidget {
  const EcommerceClothes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFFFFBD00),
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ECommerce Clothes',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFFFFBD00)),
        backgroundColor: const Color(0xFFFFBD00),
        primaryColor: const Color(0xFF763079),
      ),
      home: const HomeScreen(),
    );
  }
}
