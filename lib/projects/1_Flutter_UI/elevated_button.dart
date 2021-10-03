import 'package:flutter/material.dart';

import '../../widgets.dart';

class ElevatedButtonPage extends StatelessWidget {
  const ElevatedButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      primary: Colors.green,
      textStyle: const TextStyle(fontSize: 20),
    );
    return Scaffold(
      appBar: appbarWidget('ElevatedButton'),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              style: style,
              onPressed: null,
              child: const Text('Disabled'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: style,
              onPressed: () {},
              child: const Text('Enabled'),
            ),
          ],
        ),
      ),
    );
  }
}
