import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../widgets.dart';

class OutlinedButtonPage extends StatelessWidget {
  const OutlinedButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = OutlinedButton.styleFrom(
      shape: const StadiumBorder(),
      side: const BorderSide(width: 2, color: Colors.black45),
      primary: Colors.red,
    );

    return Scaffold(
        appBar: appbarWidget('OutlinedButton'),
        body: OutlinedButton(
          onPressed: () {},
          child: const Text('Click Me'),
          style: style,
        ));
  }
}
