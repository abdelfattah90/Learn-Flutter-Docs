import 'package:flutter/material.dart';

import '../../widgets.dart';

class LimitedBoxPage extends StatelessWidget {
  const LimitedBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('LimitedBox'),
      body: ListView(children: [
        const Text(
            'LimitedBox has no effect in Container \nIt is Useful in ListView'),
        for (var i = 0; i < 5; i++)
          LimitedBox(
            maxHeight: 200,
            child: Container(
              color: Colors.green,
              margin: const EdgeInsets.all(20),
            ),
          ),
      ]),
    );
  }
}
