import 'package:flutter/material.dart';

import '../../widgets.dart';

class BaselinePage extends StatelessWidget {
  const BaselinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Baseline'),
      body: Container(
        width: 300,
        height: 200,
        color: Colors.amber[500],
        child: Baseline(
            baseline: 30,
            baselineType: TextBaseline.alphabetic,
            child: Container(width: 200, color: Colors.redAccent)),
      ),
    );
  }
}
