import 'package:flutter/material.dart';

import '../../widgets.dart';

class AlignPage extends StatelessWidget {
  const AlignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Align'),
      body: Column(
        children: [
          Container(
            height: 120.0,
            width: 120.0,
            color: Colors.blue[50],
            child: const Align(
              alignment: Alignment.center,
              child: FlutterLogo(size: 40),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 120.0,
            width: 120.0,
            color: Colors.blue[50],
            child: const Align(
              alignment: Alignment.bottomRight,
              child: FlutterLogo(size: 40),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 120.0,
            width: 120.0,
            color: Colors.blue[50],
            child: const Align(
              alignment: Alignment(0.2, 0.6),
              child: FlutterLogo(size: 40),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 120.0,
            width: 120.0,
            color: Colors.blue[50],
            child: const Align(
              alignment: FractionalOffset(0.2, 0.6),
              child: FlutterLogo(size: 40),
            ),
          ),
        ],
      ),
    );
  }
}
