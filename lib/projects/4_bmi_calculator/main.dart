import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      title: 'Bmi Calculator',
      home: HomeScreen(),
    );
  }
}
