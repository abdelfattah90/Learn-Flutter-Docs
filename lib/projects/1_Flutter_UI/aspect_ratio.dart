import 'package:flutter/material.dart';

import '../../widgets.dart';

class AspectRatioPage extends StatelessWidget {
  const AspectRatioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('AspectRation'),
      body: Column(
        children: [
          Container(
            color: Colors.amber[500],
            alignment: Alignment.center,
            width: double.infinity,
            height: 100.0,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            color: Colors.amber[500],
            alignment: Alignment.bottomCenter,
            width: 100.0,
            height: 100.0,
            child: AspectRatio(
              aspectRatio: 2.0,
              child: Container(
                width: 100.0,
                height: 50.0,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            color: Colors.amber[500],
            alignment: Alignment.center,
            width: 100.0,
            height: 100.0,
            child: AspectRatio(
              aspectRatio: 0.5,
              child: Container(
                width: 100.0,
                height: 50.0,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
