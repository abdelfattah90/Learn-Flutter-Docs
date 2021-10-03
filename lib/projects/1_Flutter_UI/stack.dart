import 'package:flutter/material.dart';

import '../../widgets.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Stack - Positioned'),
      body: Container(
        width: double.infinity,
        color: Colors.amberAccent,
        height: 200,
        child: Stack(
          children: [
            Container(
              width: 80,
              height: 30,
              color: Colors.purpleAccent,
              child: const Text('Back'),
            ),
            Positioned(
              right: 0,
              child: Container(
                alignment: Alignment.topRight,
                width: 80,
                height: 30,
                color: Colors.lightBlueAccent,
                child: const Text('Edit'),
              ),
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                width: 80,
                height: 30,
                color: Colors.orangeAccent,
                child: const Text('Image'),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                alignment: Alignment.center,
                width: 80,
                height: 30,
                color: Colors.redAccent,
                child: const Text('comment'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
